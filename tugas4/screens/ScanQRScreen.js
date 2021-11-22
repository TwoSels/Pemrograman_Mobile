import React from 'react';
import {StyleSheet, TouchableWithoutFeedback, View} from 'react-native';
import CameraIcon from '../assets/icons/camera.svg';

const ScanQRScreen = () => {
  return (
    <View style={styles.container}>
      <TouchableWithoutFeedback
        onPress={() => {
          console.log('buka kamera');
        }}>
        <View style={styles.camera}>
          <CameraIcon width={50} height={50} fill={'#000'} />
        </View>
      </TouchableWithoutFeedback>
    </View>
  );
};

export default ScanQRScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  camera: {
    width: 320,
    height: 320,
    backgroundColor: '#C4C4C4',
    justifyContent: 'center',
    alignItems: 'center',
  },
});
