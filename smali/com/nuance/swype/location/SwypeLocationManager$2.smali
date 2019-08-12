.class final Lcom/nuance/swype/location/SwypeLocationManager$2;
.super Ljava/lang/Thread;
.source "SwypeLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/location/SwypeLocationManager;

.field private synthetic val$sLoc:Lcom/nuance/swype/location/SwypeLocation;


# direct methods
.method constructor <init>(Lcom/nuance/swype/location/SwypeLocationManager;Lcom/nuance/swype/location/SwypeLocation;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/nuance/swype/location/SwypeLocationManager$2;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    iput-object p2, p0, Lcom/nuance/swype/location/SwypeLocationManager$2;->val$sLoc:Lcom/nuance/swype/location/SwypeLocation;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 509
    const-string v3, "SwypeLocation"

    invoke-static {v3}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    .line 511
    .local v2, "log":Lcom/nuance/swype/util/LogManager$Log;
    const-string v3, "Attempting to get geocode information for location"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/location/SwypeLocationManager$2;->val$sLoc:Lcom/nuance/swype/location/SwypeLocation;

    move-object/from16 v17, v0

    .line 513
    .local v17, "threadLocation":Lcom/nuance/swype/location/SwypeLocation;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/swype/location/SwypeLocation;->location:Landroid/location/Location;

    move-object/from16 v16, v0

    .line 517
    .local v16, "loc":Landroid/location/Location;
    :try_start_0
    new-instance v3, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/location/SwypeLocationManager$2;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v4}, Lcom/nuance/swype/location/SwypeLocationManager;->access$1000(Lcom/nuance/swype/location/SwypeLocationManager;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 518
    const/4 v15, 0x0

    .local v15, "geo":Landroid/location/Geocoder;
    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v13

    .line 521
    .local v13, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 522
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Address;

    .line 523
    .local v12, "address":Landroid/location/Address;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/nuance/swype/location/SwypeLocation;->setAddress(Landroid/location/Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 540
    .end local v12    # "address":Landroid/location/Address;
    .end local v13    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v15    # "geo":Landroid/location/Geocoder;
    :cond_0
    :goto_0
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/nuance/swype/location/SwypeLocation;->address:Landroid/location/Address;

    if-eqz v3, :cond_2

    .line 541
    const-string v3, "geocode complete -- Country: ["

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/nuance/swype/location/SwypeLocation;->address:Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "] "

    const-string v6, "Admin: ["

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/nuance/swype/location/SwypeLocation;->address:Landroid/location/Address;

    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v7

    const-string v8, "] "

    const-string v9, "Locality: ["

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/nuance/swype/location/SwypeLocation;->address:Landroid/location/Address;

    invoke-virtual {v10}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 552
    :goto_1
    const-string v3, " completed geo coding --- "

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/location/SwypeLocationManager$2;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/location/SwypeLocationManager$2;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v4}, Lcom/nuance/swype/location/SwypeLocationManager;->access$1100(Lcom/nuance/swype/location/SwypeLocationManager;)Lcom/nuance/swype/location/SwypeLocationSettings;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$1200$67f8497(Lcom/nuance/swype/location/SwypeLocationManager;Lcom/nuance/swype/location/SwypeLocation;)V

    .line 554
    return-void

    .line 524
    .restart local v13    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v15    # "geo":Landroid/location/Geocoder;
    :cond_1
    :try_start_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 525
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Address;

    .line 526
    .restart local v12    # "address":Landroid/location/Address;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/nuance/swype/location/SwypeLocation;->setAddress(Landroid/location/Address;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 529
    .end local v12    # "address":Landroid/location/Address;
    .end local v13    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v15    # "geo":Landroid/location/Geocoder;
    :catch_0
    move-exception v14

    .line 530
    .local v14, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IllegalArgument Error generating location level data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 532
    .end local v14    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v14

    .line 533
    .local v14, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IO Error generating location level data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 535
    .end local v14    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v14

    .line 536
    .local v14, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error generating location level data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 549
    .end local v14    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v3, "geocode complete -- empty address"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_1
.end method
