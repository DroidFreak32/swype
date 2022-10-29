.class public Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileMode"
.end annotation


# static fields
.field public static final APPEND:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

.field public static final READ:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

.field public static final WRITE:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;->READ:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;->WRITE:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;->APPEND:Lcom/nuance/nmsp/client/sdk/common/oem/api/FileSystem$FileMode;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
