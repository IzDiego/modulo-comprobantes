import type { NextPage } from 'next'
import styles from '../styles/Home.module.css'
import TabContainer from './components/tabs/TabContainer'

const Home: NextPage = () => {
  return (
    <div className={styles.container}>
      <TabContainer/>
    </div>
  )
}

export default Home
