.class Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryListState"
.end annotation


# instance fields
.field final categoryCount:I

.field final dirty:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

.field final state:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->CLEAN:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->dirty:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->categoryCount:I

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->state:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->dirty:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    iput p3, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryListState;->categoryCount:I

    return-void
.end method
