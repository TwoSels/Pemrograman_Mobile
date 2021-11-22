import React from 'react';
import {ScrollView, StyleSheet, View, Text} from 'react-native';
import TextFieldComponent from '../components/TextFieldComponent';
import TransferImage from '../assets/images/transfer.svg';
import ButtonComponent from '../components/ButtonComponent';
import {useNavigation} from '@react-navigation/core';

const TransferScreen = () => {
  const navigation = useNavigation();
  return (
    <ScrollView>
      <View style={styles.container}>
        <TransferImage width={240} height={172} style={{marginBottom: 30}} />
        <TextFieldComponent placeholder="Nominal Transfer" type="numeric" />
        <Text style={[styles.text, {fontWeight: '400'}]}>Receiver :</Text>
        <Text style={[styles.text, {fontWeight: '300'}]}>M. Imam Whidyarto</Text>
        <ButtonComponent
          title="TRANSFER"
          style={styles.buttonStyle}
          onPress={() => {
            navigation.navigate('TransferSuccess');
          }}
        />
      </View>
    </ScrollView>
  );
};

export default TransferScreen;

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
  text: {
    fontSize: 16,
    color: '#000',
    marginVertical: 5,
  },
});
