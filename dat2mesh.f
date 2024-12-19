************************************************************************
* 水深データ(Bathmetry.dat)を
* DHI/ASMIKE 21 SW用海底地形ファイル(Bathymetry.mesh)に
* 変換するためのFortranソース
* 作成：武田　将英（東亜建設工業）
*-----------------------------
* サンプルファイル
*   Bathymetry_Slope_DX=025m.dat 一様勾配斜面 DX= 25 m
*   Bathymetry_Slope_DX=100m.dat 一様勾配斜面 DX=100 m
*   Bathymetry_Flat_DX=100m.dat  水平床 DX=100 m
* をBathmetry.datにリネームして，コンパイルしたプログラムを実行．
************************************************************************

      IMPLICIT INTEGER(I-N),real(4)(A-H,O-Z)

      real, allocatable :: x(:)
      real, allocatable :: y(:)
      real, allocatable :: z(:,:)

      OPEN(11,FILE='Bathymetry.dat')
      OPEN(21,FILE='Bathymetry.mesh')

****************************************
* データの読込
****************************************
        READ(11,*) NX, NY
        READ(11,*) DX, DY

        allocate( X(NX) )     ! 配列の割当
        allocate( Y(NY) )     ! 配列の割当
        allocate( Z(NX,NY) )  ! 配列の割当

        READ(11,*) 
        READ(11,*) IDUM,IDUM,(X(I),I=1,NX)
      DO J=1,NY
        READ(11,*) IDUM,Y(J),(Z(I,J),I=1,NX)
      END DO

      WRITE(6,*) 'ok'


****************************************
* ノードの計算
****************************************
      WRITE(21,*) '100079 1000', NX*NY, 'NON-UTM'

      INO = 0 ! ノード番号

C-----------------------------
C 上
C-----------------------------
      J=1

        INDT = 4  ! Code Value
        DO I=1,NX-1
          INO = INO+1
          WRITE(21,8000) INO,X(I),Y(J),Z(I,J),INDT
        END DO

        INDT = 1  ! Code Value 陸域（右）
          INO = INO+1
          WRITE(21,8000) INO,X(NX),Y(J),Z(I,J),INDT

C-----------------------------
C 
C-----------------------------
      DO J=2,NY-1

        INDT = 3  ! Code Value 造波境界（左）
        I=1
          INO = INO+1
          WRITE(21,8000) INO,X(I),Y(J),Z(I,J),INDT

        INDT = 0  ! Code Value 水域（中）
        DO I=2,NX-1
          INO = INO+1
          WRITE(21,8000) INO,X(I),Y(J),Z(I,J),INDT
        END DO

        INDT = 1  ! Code Value 陸域（右）
        I=NX
          INO = INO+1
          WRITE(21,8000) INO,X(I),Y(J),Z(I,J),INDT

      END DO

C-----------------------------
C 下境界
C-----------------------------
      J=NY

        INDT = 3  ! Code Value 造波境界（左）
        I=1
          INO = INO+1
          WRITE(21,8000) INO,X(I),Y(J),Z(I,J),INDT

        INDT = 2  ! Code Value
        DO I=2,NX-1
          INO = INO+1
          WRITE(21,8000) INO,X(I),Y(J),Z(I,J),INDT
        END DO

        INDT = 1  ! Code Value 陸域（右）
          INO = INO+1
          WRITE(21,8000) INO,X(NX),Y(J),Z(I,J),INDT

****************************************
* 要素の計算
****************************************
      WRITE(21,*) (NX-1)*(NY-1), '4 25'

      IEL=0
      IS  = 0

      DO J=1,NY-1
        DO I=1,NX-1
          IEL = IEL+1
          IS = (J-1)*NX+I
          WRITE(21,8100) IEL,IS,IS+NX,IS+NX+1,IS+1
        END DO
      END DO

      CLOSE(11)
      CLOSE(21)

 8000 FORMAT(I7,F11.2,F11.2,F9.2,I3)
 8100 FORMAT(5I7)



      STOP
      END
      