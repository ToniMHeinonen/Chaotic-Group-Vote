///scr_play_random_music()
var music;
music[0] = mus_thomas;
music[1] = mus_pelle;
music[2] = mus_mikko;
music[3] = mus_kakkonen;

var rand = irandom_range(0, array_length_1d(music) - 1);

audio_play_sound(music[rand], 1, true);
