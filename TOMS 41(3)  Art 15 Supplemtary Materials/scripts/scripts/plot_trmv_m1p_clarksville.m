clear all;

run output_trmv_blis
run output_trmv_openblas
run output_trmv_atlas
run output_trmv_mkl


x_axis( :, 1 ) = data_trmv_blis( :, 1 );

figure;

flopscol = 3;
msize = 4;
fontsize = 16;
legend_loc = 'NorthEast';
y_begin = 0;
y_end = 10.64;

bli = line( x_axis( :, 1 ), data_trmv_blis    ( :, flopscol ), ...
                         'Color','k','LineStyle','-' ); % ,'MarkerSize',msize,'Marker','o' );
hold on; ax1 = gca;
obl = line( x_axis( :, 1 ), data_trmv_openblas( :, flopscol ), ...
            'Parent',ax1,'Color','r','LineStyle','-.','MarkerSize',msize,'Marker','o' );
atl = line( x_axis( :, 1 ), data_trmv_atlas   ( :, flopscol ), ...
            'Parent',ax1,'Color','m','LineStyle',':','MarkerSize',msize,'Marker','x' );
mkl = line( x_axis( :, 1 ), data_trmv_mkl     ( :, flopscol ), ...
            'Parent',ax1,'Color','b','LineStyle','--' ); %,'MarkerSize',msize,'Marker','x' );


ylim( ax1, [y_begin y_end] );

leg = legend( ...
[ bli obl atl mkl ], ...
'dtrmv\_lnn (BLIS)', ...
'dtrmv\_lnn (OpenBLAS 0.2.6)', ...
'dtrmv\_lnn (ATLAS 3.10.1)', ...
'dtrmv\_lnn (MKL 11.0 Update 4)', ...
'Location', legend_loc );

set( leg,'Box','off' );
set( leg,'Color','none' );
set( leg,'FontSize',fontsize );

set( ax1,'FontSize',fontsize );
box on;

titl = title( 'dtrmv' );
xlab = xlabel( ax1,'problem size' );
ylab = ylabel( ax1,'GFLOPS' );


export_fig( 'fig_trmv_m1p_clarksville.pdf', '-grey', '-pdf', '-m2', '-painters', '-transparent' );

hold off;

