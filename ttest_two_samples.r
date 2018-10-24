DATA SPORT_HEIGHT;
	INPUT HEIGHT_NUMS SPORT$;
	DATALINES;
6.329999924 Football
6.5 Football
6.5 Football
6.25 Football
6.5 Football
6.329999924 Football
6.25 Football
6.170000076 Football
6.420000076 Football
6.329999924 Football
6.420000076 Football
6.579999924 Football
6.079999924 Football
6.579999924 Football
6.5 Football
6.420000076 Football
6.25 Football
6.670000076 Football
5.909999847 Football
6.0 Football
5.829999924 Football
6.0 Football
5.829999924 Football
5.079999924 Football
6.75 Football
5.829999924 Football
6.170000076 Football
5.75 Football
6.0 Football
5.75 Football
6.5 Football
5.829999924 Football
5.909999847 Football
5.670000076 Football
6.0 Football
6.079999924 Football
6.170000076 Football
6.579999924 Football
6.5 Football
6.25 Football
6.329999924 Football
5.25 Football
6.670000076 Football
6.5 Football
5.829999924 Football
6.079999924 Basketball
6.579999924 Basketball
6.25 Basketball
6.579999924 Basketball
6.25 Basketball
5.920000076 Basketball
7.0 Basketball
6.409999847 Basketball
6.75 Basketball
6.25 Basketball
6.0 Basketball
6.920000076 Basketball
6.829999924 Basketball
6.579999924 Basketball
6.409999847 Basketball
6.670000076 Basketball
6.670000076 Basketball
5.75 Basketball
6.25 Basketball
6.25 Basketball
6.5 Basketball
6.0 Basketball
6.920000076 Basketball
6.25 Basketball
6.420000076 Basketball
6.579999924 Basketball
6.579999924 Basketball
6.079999924 Basketball
6.75 Basketball
6.5 Basketball
6.829999924 Basketball
6.079999924 Basketball
6.920000076 Basketball
6.0 Basketball
6.329999924 Basketball
6.5 Basketball
6.579999924 Basketball
6.829999924 Basketball
6.5 Basketball
6.579999924 Basketball
;
RUN;

PROC PRINT DATA=SPORT_HEIGHT;
RUN;

ODS GRAPHICS ON;

PROC TTEST DATA=SPORT_HEIGHT SIDES=2 ALPHA=0.01;
	CLASS SPORT;
	VAR HEIGHT_NUMS;
RUN;

ODS GRAPHICS OFF;