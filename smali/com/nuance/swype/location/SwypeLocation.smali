.class public final Lcom/nuance/swype/location/SwypeLocation;
.super Ljava/lang/Object;
.source "SwypeLocation.java"


# instance fields
.field address:Landroid/location/Address;

.field public location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/nuance/swype/location/SwypeLocation;->location:Landroid/location/Location;

    .line 25
    return-void
.end method


# virtual methods
.method public final setAddress(Landroid/location/Address;)V
    .locals 0
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nuance/swype/location/SwypeLocation;->address:Landroid/location/Address;

    .line 46
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    .line 48
    return-void
.end method
