.class public Lcom/nuance/connect/location/ConnectLocation;
.super Ljava/lang/Object;


# instance fields
.field private address:Landroid/location/Address;

.field private addressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private adminArea:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private locality:Ljava/lang/String;

.field private location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->countryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->adminArea:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->locality:Ljava/lang/String;

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocation;->location:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getAddress()Landroid/location/Address;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->address:Landroid/location/Address;

    return-object v0
.end method

.method public getAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->addressList:Ljava/util/List;

    return-object v0
.end method

.method public getAdminArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->adminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->locality:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAddress(Landroid/location/Address;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocation;->address:Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->countryCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->adminArea:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocation;->locality:Ljava/lang/String;

    return-void
.end method

.method public setAddressList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocation;->addressList:Ljava/util/List;

    return-void
.end method

.method public setAdminArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocation;->adminArea:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocation;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setLocality(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocation;->locality:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocation;->location:Landroid/location/Location;

    return-void
.end method
