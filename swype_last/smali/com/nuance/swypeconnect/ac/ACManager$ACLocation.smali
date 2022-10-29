.class public Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACLocation"
.end annotation


# instance fields
.field private final country:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;->country:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getISOCountry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACLocation;->country:Ljava/lang/String;

    return-object v0
.end method
