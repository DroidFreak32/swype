.class public Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/util/dictationresult/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenType"
.end annotation


# static fields
.field public static final TEXT_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

.field public static final VOICE_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->VOICE_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    new-instance v0, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->TEXT_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
