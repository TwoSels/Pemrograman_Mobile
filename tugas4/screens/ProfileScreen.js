import React from 'react';
import {Image, StyleSheet, Text, View} from 'react-native';
import ButtonComponent from '../components/ButtonComponent';
import {useNavigation} from '@react-navigation/core';


const ProfileScreen = () => {
  const navigation = useNavigation();
  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Image
          source={require('../assets/images/imam.jpg')}
          style={styles.image}
        />
        <Text style={styles.text}>M. Imam Whidyarto </Text>
        <Text style={styles.text}>082255470425</Text>
      </View>
      <View>
        <ButtonComponent title="CHANGE PROFILE" style={styles.buttonStyle}
          onPress={() => {
            navigation.navigate('HomeScreen');
          }} />

        <ButtonComponent title="CHANGE PASSWORD" style={styles.buttonStyle}
          onPress={() => {
            navigation.navigate('HomeScreen');
          }}
        />
        <ButtonComponent
          title="LOGOUT"
          style={styles.buttonStyle}
          onPress={() => {
            navigation.navigate('Login');
          }}
        />
      </View>
    </View>
  );
};

export default ProfileScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  header: {
    backgroundColor: '#005690',
    alignItems: 'center',
    paddingVertical: 30,
    marginBottom: 20,
  },
  image: {
    borderRadius: 50,
    width: 100,
    height: 100,
    alignSelf: 'center',
    marginBottom: 10,
  },
  text: {
    textAlign: 'center',
    fontSize: 18,
    fontWeight: '400',
    color: '#FFF',
    marginVertical: 4,
  },
  buttonStyle: {
    container: {
      backgroundColor: '#4982C1',
      marginHorizontal: 30,
      padding: 10,
      marginVertical: 20,
    },
    text: {
      color: '#FFF',
      textAlign: 'center',
      fontWeight: '500',
      fontSize: 16,
    },
  },
});
