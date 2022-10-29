.class Lcom/localytics/android/LocationManager$2;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/localytics/android/Utils$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager;->removeGeofences(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/localytics/android/Utils$Mapper",
        "<",
        "Lcom/localytics/android/CircularRegion;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationManager;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/localytics/android/LocationManager$2;->this$0:Lcom/localytics/android/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 129
    check-cast p1, Lcom/localytics/android/CircularRegion;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/localytics/android/LocationManager$2;->transform(Lcom/localytics/android/CircularRegion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/localytics/android/CircularRegion;)Ljava/lang/String;
    .registers 3
    .param p1, "in"    # Lcom/localytics/android/CircularRegion;

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/localytics/android/CircularRegion;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
