.class Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PersonalDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/PersonalDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdbListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/settings/PersonalDictionary;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/settings/PersonalDictionary;Lcom/nuance/swype/input/settings/PersonalDictionary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/settings/PersonalDictionary;
    .param p2, "x1"    # Lcom/nuance/swype/input/settings/PersonalDictionary$1;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;-><init>(Lcom/nuance/swype/input/settings/PersonalDictionary;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->access$500(Lcom/nuance/swype/input/settings/PersonalDictionary;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/PersonalDictionary;->access$500(Lcom/nuance/swype/input/settings/PersonalDictionary;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 220
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 226
    if-nez p2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PersonalDictionary;->access$600(Lcom/nuance/swype/input/settings/PersonalDictionary;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 228
    sget v3, Lcom/nuance/swype/input/R$layout;->list_item_checkbox:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 229
    sget v2, Lcom/nuance/swype/input/R$id;->checked_view:I

    .line 230
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 231
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    .end local v0    # "checkedTextView":Landroid/widget/CheckedTextView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 235
    .restart local v0    # "checkedTextView":Landroid/widget/CheckedTextView;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    .local v1, "word":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PersonalDictionary$UdbListAdapter;->this$0:Lcom/nuance/swype/input/settings/PersonalDictionary;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PersonalDictionary;->access$700(Lcom/nuance/swype/input/settings/PersonalDictionary;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 239
    return-object p2
.end method
