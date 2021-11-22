import React from 'react';
import {StyleSheet, Text, TouchableWithoutFeedback, View} from 'react-native';
import Logo from '../assets/images/react.svg';
import TextFieldComponent from '../components/TextFieldComponent';
import ButtonComponent from '../components/ButtonComponent';
import {useNavigation} from '@react-navigation/core';

const LoginScreen = () => {
  const navigation = useNavigation();
  return (
    <View style={styles.container}>
      <View style={styles.logo}>
        <Logo width={92} height={88} />
      </View>
      <Text style={styles.text}>e-Wallet</Text>
      <View style={{marginVertical: 5, width: '100%'}}>
        <TextFieldComponent placeholder="Email" />
      </View>
      <View style={{marginVertical: 5, width: '100%'}}>
        <TextFieldComponent placeholder="Password" />
      </View>
      <ButtonComponent
        title="LOGIN"
        style={styles.buttonStyle}
        onPress={() => {
          navigation.navigate('HomeScreen');
        }}
      />
      <TouchableWithoutFeedback
        onPress={() => {
          navigation.navigate('Registrasi');
        }}>
        <Text style={styles.registrasiButtonStyle}>Registrasi</Text>
      </TouchableWithoutFeedback>
    </View>
  );
};

export default LoginScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    paddingHorizontal: 20,
    paddingTop: 60,
  },
  logo: {
    backgroundColor: '#005690',
    borderRadius: 100,
    width: 130,
    height: 130,
    justifyContent: 'center',
    alignItems: 'center',
  },
  text: {
    fontSize: 24,
    fontWeight: '500',
    color: '#4982C1',
    marginVertical: 20,
  },
  buttonStyle: {
    container: {
      width: '100%',
      backgroundColor: '#4982C1',
      borderRadius: 4,
      paddingVertical: 10,
      marginTop: 30,
    },
    text: {
      color: '#FFF',
      fontSize: 16,
      fontWeight: '500',
      textAlign: 'center',
    },
  },
  registrasiButtonStyle: {
    marginTop: 20,
    color: '#000',
    fontSize: 14,
    fontWeight: '400',
  },
});
