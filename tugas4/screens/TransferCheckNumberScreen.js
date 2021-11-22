import React from 'react';
import {ScrollView, StyleSheet, View} from 'react-native';
import TextFieldComponent from '../components/TextFieldComponent';
import TransferImage from '../assets/images/transfer.svg';
import ButtonComponent from '../components/ButtonComponent';
import {useNavigation} from '@react-navigation/core';

const TransferCheckNumberScreen = () => {
  const navigation = useNavigation();
  return (
    <ScrollView>
      <View style={styles.container}>
        <TransferImage width={240} height={172} style={{marginBottom: 30}} />
        <TextFieldComponent
          placeholder="Receiver Phone Number"
          type="numeric"
        />
        <ButtonComponent
          title="CHECK NUMBER"
          style={styles.buttonStyle}
          onPress={() => {
            navigation.navigate('Transfer');
          }}
        />
      </View>
    </ScrollView>
  );
};

export default TransferCheckNumberScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    paddingHorizontal: 30,
    paddingTop: 50,
    backgroundColor: '#FFF',
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
