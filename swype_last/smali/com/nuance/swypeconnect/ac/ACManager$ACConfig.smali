.class Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ACConfig"
.end annotation


# instance fields
.field public chineseCategoryEnabled:Z

.field public livingLanguageEnabled:Z


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;->livingLanguageEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$ACConfig;->chineseCategoryEnabled:Z

    return-void
.end method
