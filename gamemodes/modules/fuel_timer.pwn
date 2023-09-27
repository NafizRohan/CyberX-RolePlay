// Model wise fuel timer
FuelTimer(vehicleid)
{
    if(VehicleHasEngine(vehicleid) && GetVehicleParams(vehicleid, VEHICLE_ENGINE))
    {
        if(vehicleFuel[vehicleid] > 0)
        {
            vehicleFuel[vehicleid]--;

            switch(vehicleFuel[vehicleid])
            {
                case 15, 10, 5:
                {
                    SCM(GetVehicleDriver(vehicleid), COLOR_LIGHTRED, "** This vehicle is running low on fuel. Visit the nearest gas station to fill up. (/refuel)");
                }
            }
        }

        if(vehicleFuel[vehicleid] <= 0)
        {
            SetVehicleParams(vehicleid, VEHICLE_ENGINE, false);
            vehicleEng[vehicleid] = false;
        }

    }
}


forward SaloonsFuelTimer();
public SaloonsFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 401, 405, 410, 419, 421, 426, 436, 445, 466, 467, 474, 491, 492, 504, 507, 516, 517, 518, 526, 540, 542, 546, 547, 549, 550, 551, 560, 562, 580, 585, 604:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward SuperBikeFuelTimer();
public SuperBikeFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 521, 522:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward ConvertiblesFuelTimer();
public ConvertiblesFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 439, 480, 533, 555:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward LowBikeFuelTimer();
public LowBikeFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 448, 462, 471:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward BikeFuelTimer();
public BikeFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 461, 463, 581, 586:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward MonsterFuelTimer();
public MonsterFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 556, 557:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward PSVFuelTimer();
public PSVFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 407, 416, 420, 427, 431, 432, 433, 437, 438, 490, 523, 528, 544, 596, 597, 598, 599, 601:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward SportCarFuelTimer();
public SportCarFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 402, 411, 415, 429, 451, 475, 477, 494, 496, 502, 503, 506, 541, 558, 559, 565, 587, 589, 602, 603:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward LowRidersFuelTimer();
public LowRidersFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 412, 534, 535, 536, 566, 567, 575, 576:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward UniqueFuelTimer();
public UniqueFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 406, 409, 423, 428, 434, 442, 457, 483, 485, 486, 508, 525, 530, 532, 537, 538, 539, 545, 571, 572, 574, 583, 588:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward StationWagonsFuelTimer();
public StationWagonsFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 404, 418, 458, 479, 561:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward IndustrialFuelTimer();
public IndustrialFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 403, 408, 413, 414, 422, 440, 443, 455, 459, 478, 482, 498, 499, 514, 515, 524, 531, 543, 552, 554, 578, 582, 600, 605, 609:
            {
                FuelTimer(i);
            }
        }
    }
	
}

forward OffRoadFuelTimer();
public OffRoadFuelTimer()
{
    for(new i = 0; i < MAX_VEHICLES; i ++)
    {
        switch(GetVehicleModel(i))
        {
            case 400, 424, 444, 470, 489, 495, 500, 505, 568, 573, 579:
            {
                FuelTimer(i);
            }
        }
    }
}