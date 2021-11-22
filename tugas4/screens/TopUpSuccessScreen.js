import React from 'react';
import {StyleSheet, Text, View} from 'react-native';
import DompetIcon from '../assets/images/dompet.svg';
import ButtonComponent from '../components/ButtonComponent';
import {useNavigation} from '@react-navigation/core';

const TopUpSuccessScreen = () => {
  const navigation = useNavigation();
  return (
    <View style={styles.container}>
      <DompetIcon width={200} height={200} style={{marginBottom: 30}} />

      <View style={{marginBottom: 20}}>
        <Text
          style={{
            fontSize: 24,
            fontWeight: '400',
            color: '#000',
            textAlign: 'center',
          }}>
          Top Up Complete
        </Text>
        <Text
          style={{
            fontSize: 24,
            fontWeight: '400',
            color: '#000',
            textAlign: 'center',
          }}>
          Rp. 100,000
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
          20 November 2021
        </Text>
        <Text
          style={{
            fontSize: 18,
            fontWeight: '400',
            color: '#FFF',
            marginVertical: 5,
          }}>
          VA Mandiri
        </Text>
      </View>
      <ButtonComponent
        title="Finish"
        style={styles.buttonStyle}
        onPress={() => {
          navigation.navigate('Home');
        }}
      />
    </View>
  );
};

export default TopUpSuccessScreen;

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
