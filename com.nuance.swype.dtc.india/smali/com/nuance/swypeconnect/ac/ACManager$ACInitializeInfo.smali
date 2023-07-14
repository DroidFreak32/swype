.class public Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACInitializeInfo"
.end annotation


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;->applicationId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;->applicationId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public legacySecretKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public services()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
