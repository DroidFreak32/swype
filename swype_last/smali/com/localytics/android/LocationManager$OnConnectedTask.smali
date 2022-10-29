.class final enum Lcom/localytics/android/LocationManager$OnConnectedTask;
.super Ljava/lang/Enum;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OnConnectedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/localytics/android/LocationManager$OnConnectedTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/LocationManager$OnConnectedTask;

.field public static final enum REQUEST_LOCATION_UPDATES:Lcom/localytics/android/LocationManager$OnConnectedTask;

.field public static final enum STOP_LOCATION_UPDATES:Lcom/localytics/android/LocationManager$OnConnectedTask;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/localytics/android/LocationManager$OnConnectedTask;

    const-string/jumbo v1, "REQUEST_LOCATION_UPDATES"

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/LocationManager$OnConnectedTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/LocationManager$OnConnectedTask;->REQUEST_LOCATION_UPDATES:Lcom/localytics/android/LocationManager$OnConnectedTask;

    .line 41
    new-instance v0, Lcom/localytics/android/LocationManager$OnConnectedTask;

    const-string/jumbo v1, "STOP_LOCATION_UPDATES"

    invoke-direct {v0, v1, v3}, Lcom/localytics/android/LocationManager$OnConnectedTask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/LocationManager$OnConnectedTask;->STOP_LOCATION_UPDATES:Lcom/localytics/android/LocationManager$OnConnectedTask;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/localytics/android/LocationManager$OnConnectedTask;

    sget-object v1, Lcom/localytics/android/LocationManager$OnConnectedTask;->REQUEST_LOCATION_UPDATES:Lcom/localytics/android/LocationManager$OnConnectedTask;

    aput-object v1, v0, v2

    sget-object v1, Lcom/localytics/android/LocationManager$OnConnectedTask;->STOP_LOCATION_UPDATES:Lcom/localytics/android/LocationManager$OnConnectedTask;

    aput-object v1, v0, v3

    sput-object v0, Lcom/localytics/android/LocationManager$OnConnectedTask;->$VALUES:[Lcom/localytics/android/LocationManager$OnConnectedTask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/LocationManager$OnConnectedTask;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/localytics/android/LocationManager$OnConnectedTask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/LocationManager$OnConnectedTask;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/LocationManager$OnConnectedTask;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/localytics/android/LocationManager$OnConnectedTask;->$VALUES:[Lcom/localytics/android/LocationManager$OnConnectedTask;

    invoke-virtual {v0}, [Lcom/localytics/android/LocationManager$OnConnectedTask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/LocationManager$OnConnectedTask;

    return-object v0
.end method
