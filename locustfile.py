from locust import HttpUser, between, task

class WebsiteUser(HttpUser):
    wait_time = between(5, 9)
    
    @task
    def index(self):
        self.client.get("/")
        self.client.get("/hello")
        self.client.get("/world")
