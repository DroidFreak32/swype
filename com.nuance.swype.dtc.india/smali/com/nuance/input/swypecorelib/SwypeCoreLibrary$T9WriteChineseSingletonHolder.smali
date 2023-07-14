.class Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteChineseSingletonHolder;
.super Ljava/lang/Object;
.source "SwypeCoreLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T9WriteChineseSingletonHolder"
.end annotation


# static fields
.field private static final T9WRITE_CHINESE_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteChinese;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;-><init>()V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteChineseSingletonHolder;->T9WRITE_CHINESE_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/nuance/input/swypecorelib/T9WriteChinese;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteChineseSingletonHolder;->T9WRITE_CHINESE_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    return-object v0
.end method
