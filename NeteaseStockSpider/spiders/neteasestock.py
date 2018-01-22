# -*- coding: utf-8 -*-
import scrapy


class NeteasestockSpider(scrapy.Spider):
    name = 'neteasestock'
    allowed_domains = ['quotes.money.163.com']
    start_urls = ['http://quotes.money.163.com/']

    def parse(self, response):
        pass
