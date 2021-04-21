import { map, sortBy } from 'common/collections';
import { flow } from 'common/fp';
import { toFixed } from 'common/math';
import { pureComponentHooks } from 'common/react';
import { Component, Fragment } from 'inferno';
import { Box, Button, Chart, ColorBox, Flex, Icon, LabeledList, ProgressBar, Section, Table } from '../components';
import { NtosWindow } from '../layouts';
import { useBackend, useLocalState } from '../backend';

export const NtosRbmkStats = (props, context) => {
  const { act, data } = useBackend(context);
  const powerData = data.powerData.map((value, i) => [i, value]);
  const moleData = data.moleData.map((value, i) => [i, value]);
  const tempInputData = data.tempInputData.map((value, i) => [i, value]);
  const tempOutputdata = data.tempOutputdata.map((value, i) => [i, value]);
  return (
    <NtosWindow resizable>
      <NtosWindow.Content>

        <Section title="Legend:" buttons={
          <Button
            icon="search"
            onClick={() => act('swap_reactor')}
            content="Change Reactor" />
        }>
          Reactor Power (%):
          <ProgressBar
            value={data.power}
            minValue={0}
            maxValue={100}
            color="yellow" />
          <br />
          Reactor Pressure (PSI):
          <ProgressBar
            value={data.moles}
            minValue={0}
            maxValue={2000}
            color="white" >
            {data.moles} PSI
          </ProgressBar>
          Reactor Mass (Moles):
          <ProgressBar
            value={data.coolantInput}
            minValue={-273.15}
            maxValue={1227}
            color="blue">
            {data.coolantInput} °C
          </ProgressBar>
          Outlet temperature (°C):
          <ProgressBar
            value={data.coolantOutput}
            minValue={-273.15}
            maxValue={1227}
            color="bad">
            {data.coolantOutput} °C
          </ProgressBar>
        </Section>
        <Section title="Reactor Statistics:" height="200px">
          <Chart.Line
            fillPositionedParent
            data={powerData}
            rangeX={[0, powerData.length - 1]}
            rangeY={[0, 1500]}
            strokeColor="rgba(255, 215,0, 1)"
            fillColor="rgba(255, 215, 0, 0.1)" />
          <Chart.Line
            fillPositionedParent
            data={moleData}
            rangeX={[0, moleData.length - 1]}
            rangeY={[0, 1500]}
            strokeColor="rgba(255,250,250, 1)"
            fillColor="rgba(255,250,250, 0.1)" />
          <Chart.Line
            fillPositionedParent
            data={tempInputData}
            rangeX={[0, tempInputData.length - 1]}
            rangeY={[-273.15, 1227]}
            strokeColor="rgba(127, 179, 255 , 1)"
            fillColor="rgba(127, 179, 255 , 0.1)" />
          <Chart.Line
            fillPositionedParent
            data={tempOutputdata}
            rangeX={[0, tempOutputdata.length - 1]}
            rangeY={[-273.15, 1227]}
            strokeColor="rgba(255, 0, 0 , 1)"
            fillColor="rgba(255, 0, 0 , 0.1)" />
        </Section>
      </NtosWindow.Content>
    </NtosWindow>
  );
};
