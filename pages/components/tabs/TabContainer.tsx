import * as React from 'react';
import PropTypes from 'prop-types';
import Tabs from '@mui/material/Tabs';
import Tab from '@mui/material/Tab';
import Typography from '@mui/material/Typography';
import Box from '@mui/material/Box';
import FormComprobantes from './FormComprobantes';

function TabPanel(props: { [x: string]: any; children: any; value: any; index: any; }) {
  const { children, value, index, ...other } = props;

  return (
    <div
      role="tabpanel"
      hidden={value !== index}
      id={`simple-tabpanel-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
    >
      {value === index && (
        <Box sx={{ p: 3 }}>
          <Typography>{children}</Typography>
        </Box>
      )}
    </div>
  );
}

TabPanel.propTypes = {
  children: PropTypes.node,
  index: PropTypes.number.isRequired,
  value: PropTypes.number.isRequired,
};

function a11yProps(index: number) {
  return {
    id: `simple-tab-${index}`,
    'aria-controls': `simple-tabpanel-${index}`,
  };
}

export default function BasicTabs() {
  const [value, setValue] = React.useState(0);

  const handleChange = (event: any, newValue: React.SetStateAction<number>) => {
    setValue(newValue);
  };

  return (
    <Box sx={{ width: '100%' }}>
      <Box sx={{ borderBottom: 1, borderColor: 'divider' }}>
        <Tabs value={value} onChange={handleChange} aria-label="basic tabs example">
          <Tab label="Información del pago" {...a11yProps(0)} />
          <Tab label="Comprobantes relacionados" {...a11yProps(1)} />
          <Tab label="Ajustes" {...a11yProps(2)} />
          <Tab label="Movimientos" {...a11yProps(3)} />
        </Tabs>
      </Box>
      <TabPanel value={value} index={0}>
        Item 1
      </TabPanel>
      <TabPanel value={value} index={1}>
        <FormComprobantes/>
      </TabPanel>
      <TabPanel value={value} index={2}>
        Item 3
      </TabPanel>
      <TabPanel value={value} index={3}>
        Item 4
      </TabPanel>
    </Box>
  );
}