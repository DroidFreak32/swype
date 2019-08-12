.class Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$200(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;->listUpdated()V

    return-void
.end method
