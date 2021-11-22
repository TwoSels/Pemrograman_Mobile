import React from 'react';
import {ScrollView, StyleSheet, View} from 'react-native';
import TextFieldComponent from '../components/TextFieldComponent';
import DompetIcon from '../assets/images/dompet.svg';
import ButtonComponent from '../components/ButtonComponent';
import {useNavigation} from '@react-navigation/core';

const TopUpScreen = () => {
  const navigation = useNavigation();
  return (
    <ScrollView>
      <View style={styles.container}>
        <DompetIcon width={200} height={200} style={{marginBottom: 30}} />
        <TextFieldComponent placeholder="Nominal Top Up" type="numeric" />
        <ButtonComponent
          title="Submit"
          style={styles.buttonStyle}
          onPress={() => {
            navigation.navigate('TopUpSuccess');
          }}
        />
      </View>
    </ScrollView>
  );
};

export default TopUpScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    paddingHorizontal: 30,
    paddingTop: 50,
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
