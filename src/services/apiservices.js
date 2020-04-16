import api from '../utils/api';

const apiService = {
  createSite: async (data) => {
    let response = await api.post('/create-database',
      {
        'site_name': data.site_name,
        'url': data.url
      }
    );
    return response;
  },
};

export default apiService;