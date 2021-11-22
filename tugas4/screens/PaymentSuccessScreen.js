import React from 'react';
import {StyleSheet, Text, View} from 'react-native';
import PaymentImage from '../assets/images/payment.svg';
import ButtonComponent from '../components/ButtonComponent';
import {useNavigation} from '@react-navigation/core';

const PaymentSuccessScreen = () => {
  const navigation = useNavigation();
  return (
    <View style={styles.container}>
      <PaymentImage width={200} height={200} style={{marginBottom: 30}} />

      <View style={{marginBottom: 20}}>
        <Text
          style={{
            fontSize: 24,
            fontWeight: '400',
            color: '#000',
            textAlign: 'center',
            marginBottom: 10,
          }}>
          Payment Complete!
        </Text>
        <Text
          style={{
            fontSize: 24,
            fontWeight: '400',
            color: '#000',
            textAlign: 'center',
          }}>
          Rp. 60,000
        </Text>
      </View>
      <View style={styles.card}>
        <Text
          style={{
            fontSize: 18,
            fontWeight: '400',
            color: '#FFF',
            marginVertical: 5,
          }}>
          Payment To :
        </Text>
        <Text
          style={{
            fontSize: 24,
            fontWeight: '400',
            color: '#FFF',
            marginVertical: 5,
          }}>
          Basicschool
        </Text>
        <Text
          style={{
            fontSize: 18,
            fontWeight: '400',
            color: '#FFF',
            marginVertical: 5,
          }}>
          Jl. Ciparay No 20B, Kota Bandung
        </Text>
      </View>
      <ButtonComponent
        title="FINISH"
        style={styles.buttonStyle}
        onPress={() => {
          navigation.navigate('Home');
        }}
      />
    </View>
  );
};

export default PaymentSuccessScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    paddingHorizontal: 30,
    paddingTop: 50,
    backgroundColor: '#FFF',
  },
  card: {
    width: '100%',
    backgroundColor: '#4982C1',
    alignItems: 'center',
    paddingVertical: 15,
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
