import React, {useEffect} from 'react';
import {Image, StyleSheet, Text, View} from 'react-native';
import Logo from '../assets/images/react.svg';

const SplashScreen = ({navigation}) => {
  useEffect(() => {
    setTimeout(() => {
      navigation.navigate('Home');
    }, 5000);
  });
  return (
    <View
      style={{flex: 1, backgroundColor: '#005690', justifyContent: 'center'}}>
      <View style={styles.container}>
        <Logo width={175} height={180} />
        <Text style={styles.text}>e-Wallet App</Text>
        <Text style={styles.text}>Final Project React Native</Text>
      </View>
    </View>
  );
};

export default SplashScreen;

const styles = StyleSheet.create({
  container: {
    alignItems: 'center',
    alignSelf: 'center',
  },
  text: {
    color: 'white',
    fontSize: 36,
    textAlign: 'center',
    marginVertical: '2%',
    marginHorizontal: '20%',
  },
});
