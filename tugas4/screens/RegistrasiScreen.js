import React from 'react';
import {StyleSheet, View} from 'react-native';
import TextFieldComponent from '../components/TextFieldComponent';
import ButtonComponent from '../components/ButtonComponent';
import {useNavigation} from '@react-navigation/core';

const RegistrasiScreen = () => {
  const navigation = useNavigation();
  return (
    <View style={styles.container}>
      <View style={{marginVertical: 10, width: '100%'}}>
        <TextFieldComponent placeholder="Email" />
      </View>
      <View style={{marginVertical: 10, width: '100%'}}>
        <TextFieldComponent placeholder="Password" />
      </View>
      <View style={{marginVertical: 10, width: '100%'}}>
        <TextFieldComponent placeholder="Nama" />
      </View>
      <View style={{marginVertical: 10, width: '100%'}}>
        <TextFieldComponent placeholder="No Handphone" />
      </View>
      <ButtonComponent
        title="SUBMIT"
        style={styles.buttonStyle}
        onPress={() => {
          navigation.navigate('Login');
        }}
      />
    </View>
  );
};

export default RegistrasiScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    paddingHorizontal: 20,
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
});
