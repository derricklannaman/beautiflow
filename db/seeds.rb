Stylist.delete_all
Client.delete_all

s1 = Stylist.create(:first_name => "Senia", :last_name => "Lannaman", :password => "password", :stylist_email => "senia@email.com")
s2 = Stylist.create(:first_name => "Derrick", :last_name => "Lannaman", :password => "password", :stylist_email => "derrick@email.com")
s3 = Stylist.create(:first_name => "Mateo", :last_name => "Lannaman", :password => "password", :stylist_email => "mateo@email.com")
s4 = Stylist.create(:first_name => "Milan", :last_name => "Lannaman", :password => "password", :stylist_email => "milan@email.com")
s5 = Stylist.create(:first_name => "Hello", :last_name => "Lannaman", :password => "password", :stylist_email => "hello@email.com")

c1 = Client.create(:first_name => "marvin", :last_name => "austin")
c2 = Client.create(:first_name => "victor", :last_name => "cruz")
c3 = Client.create(:first_name => "chase", :last_name => "blackburn")
c4 = Client.create(:first_name => "ahmed", :last_name => "bradshaw")
c5 = Client.create(:first_name => "eli", :last_name => "manning")
c6 = Client.create(:first_name => "chris", :last_name => "canty")
c7 = Client.create(:first_name => "hakeem", :last_name => "nicks")
c8 = Client.create(:first_name => "jason", :last_name => "pierre-paul")
c9 = Client.create(:first_name => "antrel", :last_name => "rolle")
c10 = Client.create(:first_name => "osi", :last_name => "umenyiora")
c11= Client.create(:first_name => "justin", :last_name => "tuck")

