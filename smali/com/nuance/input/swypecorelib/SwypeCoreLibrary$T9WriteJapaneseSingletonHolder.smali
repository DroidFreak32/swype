.class Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteJapaneseSingletonHolder;
.super Ljava/lang/Object;
.source "SwypeCoreLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "T9WriteJapaneseSingletonHolder"
.end annotation


# static fields
.field private static final T9WRITE_JAPANESE_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteJapanese;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;-><init>()V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteJapaneseSingletonHolder;->T9WRITE_JAPANESE_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700()Lcom/nuance/input/swypecorelib/T9WriteJapanese;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteJapaneseSingletonHolder;->T9WRITE_JAPANESE_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    return-object v0
.end method
