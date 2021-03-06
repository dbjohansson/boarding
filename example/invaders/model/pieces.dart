part of invaders;

class Spaceship extends MovablePiece {  
  Spaceship() {
    randomInit();
    width = 70;
    height = 70;
    shape = PieceShape.IMG;
    imgId = 'spaceship';
    videoId = 'invader';
    usesVideo = false;
  }
}

class Laser extends MovablePiece {  
  Laser() {
    randomInit();
    width = 4;
    height = 50;
    color = 'gray';
    borderColor = 'red';
    speed.dy = 6;
    shape = PieceShape.RECT;
    isVisible = false;
    audioId = 'collision';
    usesAudio = true;
  }
}

class Cloud extends MovablePiece {  
  Cloud(int id) {
    randomInit();
    width = 70;
    height = 70;
    shape = PieceShape.IMG;
    imgId = 'cloud';
  }
}

class Creature extends MovablePiece {  
  Creature(int id) {
    randomInit();
    width = 104;
    height = 80;
    if (dy < 2) {
      dy = 2;
    }
    if (dx >= dy) {
      dx = dy - 1;
    } 
    y = -y;
    var ri = randomInt(7);
    dx = randomSign(ri) * dx; 
    shape = PieceShape.IMG;
    imgId = 'creature';
  }
}

class Clouds extends MovablePieces {
  Clouds(int count): super(count);

  createMovablePieces(int count) {
    var id = 0;
    for (var i = 0; i < count; i++) {
      add(new Cloud(++id));
    }
  }
}

class Creatures extends MovablePieces {
  Creatures(int count): super(count);

  createMovablePieces(int count) {
    var id = 0;
    for (var i = 0; i < count; i++) {
      add(new Creature(++id));
    }
  }
}