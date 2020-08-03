FROM mediawiki:1.34.2

RUN curl -SL https://extdist.wmflabs.org/dist/extensions/VisualEditor-REL1_34-74116a7.tar.gz | \
  tar -zxC /var/www/html/extensions && \
  curl -SL https://extdist.wmflabs.org/dist/extensions/ContributionScores-REL1_34-7b876b0.tar.gz | \
  tar -zxC /var/www/html/extensions

CMD ["apache2-foreground"]
