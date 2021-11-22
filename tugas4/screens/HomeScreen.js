import React from 'react';
import {
  ScrollView,
  StyleSheet,
  Text,
  View,
  TouchableWithoutFeedback,
} from 'react-native';
import ButtonIcon from '../components/ButtonIcon';
import PlusIcon from '../assets/icons/plus.svg';
import QRIcon from '../assets/icons/qr.svg';
import TransferIcon from '../assets/icons/transfer.svg';
import {useNavigation} from '@react-navigation/core';
import CardTransaction from '../components/CardTransaction';
import CardTransaction2 from '../components/CardTransaction2';

const HomeScreen = () => {
  const navigation = useNavigation();
  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Text style={[styles.header.text, {fontSize: 14, color:'black'}]}>Your Balance :</Text>
        <Text style={[styles.header.text, {fontSize: 36, color:'black'}]}>Rp. 1.234.567.890</Text>
      </View>
      <View style={styles.action}>
        <TouchableWithoutFeedback
          onPress={() => {
            navigation.navigate('TopUp');
          }}>
          <View>
            <ButtonIcon icon={<PlusIcon width={30} height={30} />} />
            <Text style={styles.action.text}>Top Up</Text>
          </View>
        </TouchableWithoutFeedback>
        <TouchableWithoutFeedback
          onPress={() => {
            navigation.navigate('ScanQR');
          }}>
          <View>
            <ButtonIcon icon={<QRIcon width={30} height={30} />} />
            <Text style={styles.action.text}>QR Pay</Text>
          </View>
        </TouchableWithoutFeedback>
        <TouchableWithoutFeedback
          onPress={() => {
            navigation.navigate('TransferCheckNumber');
          }}>
          <View>
            <ButtonIcon icon={<TransferIcon width={30} height={30} />} />
            <Text style={styles.action.text}>Transfer</Text>
          </View>
        </TouchableWithoutFeedback>
      </View>
      <View style={{marginHorizontal: 20}}>
        <Text style={{marginVertical: 8,color:'black'}}>7 Latest Transaction</Text>
        <ScrollView>
          <CardTransaction2 />
          <CardTransaction2 />
          <CardTransaction />
          <CardTransaction />
          <CardTransaction />
          <CardTransaction />
          <CardTransaction />
        </ScrollView>
      </View>
    </View>
  );
};

export default HomeScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  header: {
    backgroundColor: '#FFF',
    alignItems: 'center',
    paddingVertical: 12,
    text: {
      width: '80%',
      fontWeight: '500',
    },
  },
  action: {
    backgroundColor: '#4982C1',
    flexDirection: 'row',
    justifyContent: 'space-around',
    paddingVertical: 15,
    margin: 20,
    borderRadius: 4,
    text: {
      color: '#FFF',
      marginTop: 5,
      fontWeight: '500',
      fontSize: 14,
      textAlign: 'center',
    },
  },
});
