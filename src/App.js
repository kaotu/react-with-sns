import React from 'react';
import './App.css';
import { 
  InputGroup,
  Input,
  Row,
  Col,
  Container,
  Button
} from 'reactstrap';
import ApiService from './services/apiservices'
class App extends React.Component {
  state = {
    siteName: '',
    url: ''
  }

  submitData = async () => {
    const { siteName, url } = this.state
    const response = await ApiService.createSite({ site_name: siteName, url: url })
    console.log(response)
  } 

  render () {
    return (
      <Container>
        <Row>
          <Col>
            <InputGroup>
              <Input 
                placeholder="site name" 
                onChange={(e)=> this.setState({ siteName: e.target.value })}
              />
            </InputGroup>
            <InputGroup>
              <Input 
                placeholder="url" 
                onChange={(e) => this.setState({ url: e.target.value })}
              />
            </InputGroup>
            <Button onClick={() => this.submitData()}>Create Site</Button>
          </Col>
        </Row>
      </Container> 
    );
  }
}

export default App;
