ini_open(working_directory + "\gameproperties.ini"); // path + filename

global.scorePlace1 = ini_read_real('scores','place1', 0);
global.scorePlace2 = ini_read_real('scores','place2', 0);
global.scorePlace3 = ini_read_real('scores','place3', 0);
global.scorePlace4 = ini_read_real('scores','place4', 0);
global.scorePlace5 = ini_read_real('scores','place5', 0);

if(score != 0 ){
    if(score > global.scorePlace5 && score <= global.scorePlace4){
        global.scorePlace5 = score;
        global.scorePlaceMine = 5;
    }
    if(score > global.scorePlace4 && score <= global.scorePlace3){
        global.scorePlace5 = global.scorePlace4;
        global.scorePlace4 = score
        global.scorePlaceMine = 4;
    }
    if(score > global.scorePlace3 && score <= global.scorePlace2){
        global.scorePlace5 = global.scorePlace4;
        global.scorePlace4 = global.scorePlace3;
        global.scorePlace3 = score
        global.scorePlaceMine = 3;
    }
    if(score > global.scorePlace2 && score <= global.scorePlace1){
        global.scorePlace5 = global.scorePlace4;
        global.scorePlace4 = global.scorePlace3;
        global.scorePlace3 = global.scorePlace2;
        global.scorePlace2 = score;
        global.scorePlaceMine = 2;
    }
    if(score > global.scorePlace1){
        global.scorePlace5 = global.scorePlace4;
        global.scorePlace4 = global.scorePlace3;
        global.scorePlace3 = global.scorePlace2;
        global.scorePlace2 = global.scorePlace1;
        global.scorePlace1 = score;
        global.scorePlaceMine = 1;
    }
    else
        global.scorePlaceMine = -1;
}
else
    global.scorePlaceMine = -1;

ini_write_real('scores','place1', global.scorePlace1);
ini_write_real('scores','place2', global.scorePlace2);
ini_write_real('scores','place3', global.scorePlace3);
ini_write_real('scores','place4', global.scorePlace4);
ini_write_real('scores','place5', global.scorePlace5);

ini_close();
