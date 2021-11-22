import React from 'react';
import {NavigationContainer} from '@react-navigation/native';
import {createNativeStackNavigator} from '@react-navigation/native-stack';
import {createBottomTabNavigator} from '@react-navigation/bottom-tabs';
import SplashScreen from './screens/SplashScreen';
import HomeScreen from './screens/HomeScreen';
import TransactionScreen from './screens/TransactionScreen';
import ProfileScreen from './screens/ProfileScreen';
import HomeIcon from './assets/icons/home.svg';
import TransactionIcon from './assets/icons/transaction.svg';
import ProfileIcon from './assets/icons/profile.svg';
import TopUpScreen from './screens/TopUpScreen';
import ScanQRScreen from './screens/ScanQRScreen';
import TopUpSuccessScreen from './screens/TopUpSuccessScreen';
import LoginScreen from './screens/LoginScreen';
import RegistrasiScreen from './screens/RegistrasiScreen';
import TransferCheckNumberScreen from './screens/TransferCheckNumberScreen';
import TransferScreen from './screens/TransferScreen';
import TransferSuccessScreen from './screens/TransferSuccessScreen';
import PaymentConfirmScreen from './screens/PaymentConfirmScreen';
import PaymentSuccessScreen from './screens/PaymentSuccessScreen';

const Stack = createNativeStackNavigator();
const Tab = createBottomTabNavigator();
function TabScreen() {
  return (
    <Tab.Navigator>
      <Tab.Screen
        name="HomeScreen"
        component={HomeScreen}
        options={{
          headerShown: false,
          tabBarLabel: 'Home',
          tabBarLabelStyle: {
            fontSize: 14,
            fontWeight: '600',
          },
          tabBarIcon: tabState => {
            return (
              <HomeIcon
                width={32}
                height={32}
                fill={tabState.focused ? '#005690' : '#000'}
              />
            );
          },
        }}
      />
      <Tab.Screen
        name="TransactionScreen"
        component={TransactionScreen}
        options={{
          headerShown: false,
          tabBarLabel: 'Transaction',
          tabBarLabelStyle: {
            fontSize: 14,
            fontWeight: '600',
          },
          tabBarIcon: tabState => {
            return (
              <TransactionIcon
                width={32}
                height={32}
                fill={tabState.focused ? '#005690' : '#000'}
              />
            );
          },
        }}
      />
      <Tab.Screen
        name="ProfileScreen"
        component={ProfileScreen}
        options={{
          headerShown: false,
          tabBarLabel: 'Profile',
          tabBarLabelStyle: {
            fontSize: 14,
            fontWeight: '600',
          },
          tabBarIcon: tabState => {
            return (
              <ProfileIcon
                width={32}
                height={32}
                fill={tabState.focused ? '#005690' : '#000'}
              />
            );
          },
        }}
      />
    </Tab.Navigator>
  );
}

const App = () => {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="PaymentConfirm">
        <Stack.Screen
          name="Splash"
          component={SplashScreen}
          options={{headerShown: false}}
        />
        <Stack.Screen
          name="Login"
          component={LoginScreen}
          options={{headerShown: false}}
        />
        <Stack.Screen
          name="Registrasi"
          component={RegistrasiScreen}
          options={{
            headerTitle: 'Account Registration',
            headerTintColor: '#FFF',
            headerStyle: {
              backgroundColor: '#005690',
            },
          }}
        />
        <Stack.Screen
          name="Home"
          component={TabScreen}
          options={{headerShown: false}}
        />
        <Stack.Screen
          name="Transaction"
          component={TransactionScreen}
          options={{headerShown: false}}
        />
        <Stack.Screen
          name="Profile"
          component={ProfileScreen}
          options={{headerShown: false}}
        />
        <Stack.Screen
          name="TopUp"
          component={TopUpScreen}
          options={{
            headerTitle: 'Top Up',
            headerTintColor: '#FFF',
            headerStyle: {
              backgroundColor: '#005690',
            },
          }}
        />
        <Stack.Screen
          name="TopUpSuccess"
          component={TopUpSuccessScreen}
          options={{headerShown: false}}
        />
        <Stack.Screen
          name="ScanQR"
          component={ScanQRScreen}
          options={{
            headerTitle: 'QR Payment',
            headerTintColor: '#FFF',
            headerStyle: {
              backgroundColor: '#005690',
            },
          }}
        />
        <Stack.Screen
          name="TransferCheckNumber"
          component={TransferCheckNumberScreen}
          options={{
            headerTitle: 'Transfer',
            headerTintColor: '#FFF',
            headerStyle: {
              backgroundColor: '#005690',
            },
          }}
        />
        <Stack.Screen
          name="Transfer"
          component={TransferScreen}
          options={{
            headerTitle: 'Transfer',
            headerTintColor: '#FFF',
            headerStyle: {
              backgroundColor: '#005690',
            },
          }}
        />
        <Stack.Screen
          name="TransferSuccess"
          component={TransferSuccessScreen}
          options={{
            headerShown: false,
          }}
        />
        <Stack.Screen
          name="PaymentConfirm"
          component={PaymentConfirmScreen}
          options={{
            headerTitle: 'Payment Confirmation',
            headerTintColor: '#FFF',
            headerStyle: {
              backgroundColor: '#005690',
            },
          }}
        />
        <Stack.Screen
          name="PaymentSuccess"
          component={PaymentSuccessScreen}
          options={{
            headerShown: false,
          }}
        />
      </Stack.Navigator>
    </NavigationContainer>
  );
};

export default App;
