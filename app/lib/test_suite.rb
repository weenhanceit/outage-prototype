module TestSuite
  def ci_list
    [
      {
      "name" =>"devenv01",
      "description" => "Ubuntu 16.04 for Development Group."
    },
    {
    "name" =>"devenv02",
    "description" => "Ubuntu 16.04 for Test Group."
  },
      {
      "name" =>"afappubu0020",
      "description" => "Ubuntu 16.04 server for Autism Funding application."
    },
      {
      "name" =>"afappubu0021",
      "description" => "Ubuntu 16.04 server for Autism Funding application."
    },
      {
      "name" =>"afappubu0022",
      "description" => "Ubuntu 16.04 server for Autism Funding application."
    },
      {
      "name" =>"afappubu0023",
      "description" => "Ubuntu 16.04 server for Autism Funding application."
    },
      {
      "name" =>"afappubu0024",
      "description" => "Ubuntu 16.04 server for Autism Funding application."
    }
    ]
  end
  def outage_list
    cis = ci_list
    [
      {"short_description" => "Development Systems Maintenance",
      "long_description" => "A really long description that nobody will read",
      "start_time" => (Time.now + 5.days),
      "end_time" => (Time.now + 5.days + 2.hours),
      "completed" => "no",
      "status" => "free form note",
      "cis" => [{"id"=>0, "ci"=>cis[0]},{"id"=>1, "ci"=>cis[1]}]
      },
      {"short_description" => "Upgrade of Autism-Funding Servers",
        "long_description" => "This outage is really scary because it impacts a bunch of things",
        "start_time" => (Time.now + 7.days),
        "end_time" => (Time.now + 7.days + 2.hours),
        "completed" => "no",
        "status" => "",
        "cis" => [{"id"=>2, "ci"=>cis[2]},{"id"=>3, "ci"=>cis[3]},{"id"=>4, "ci"=>cis[4]},{"id"=>5, "ci"=>cis[5]}]
      },
    ]
  end

end
