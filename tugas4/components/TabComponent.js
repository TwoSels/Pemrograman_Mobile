import React, {useState, useEffect} from 'react';
import {StyleSheet, Text, View, TouchableOpacity} from 'react-native';
import {useNavigation, useRoute} from '@react-navigation/native';
import HomeIcon from '../assets/icons/home.svg';
import TransactionIcon from '../assets/icons/transaction.svg';
import ProfileIcon from '../assets/icons/profile.svg';

const TabComponent = () => {
  const navigation = useNavigation();
  console.log(navigation);
  return (
    <View style={styles.container}>
      <TouchableOpacity
        style={styles.tab}
        onPress={() => navigation.navigate('Home')}>
        <HomeIcon width={32} height={32} fill={'red'} />
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.tab}
        onPress={() => navigation.navigate('Transaction')}>
        <TransactionIcon width={32} height={32} />
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.tab}
        onPress={() => navigation.navigate('Profile')}>
        <ProfileIcon width={32} height={32} />
      </TouchableOpacity>
    </View>
  );
};

export default TabComponent;

const styles = StyleSheet.create({
  container: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    position: 'relative',
    bottom: 0,
    backgroundColor: '#FFF',
    paddingVertical: 8,
  },
  tab: {
    flex: 1,
    alignItems: 'center',
  },
  active: {
    color: 'red',
  },
});
