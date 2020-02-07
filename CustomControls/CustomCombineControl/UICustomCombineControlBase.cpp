#include "UICustomCombineControlBase.h"
#include "UICustomCore/CustomStyleConfig.h"

UICustomCombineControlBase::UICustomCombineControlBase(QWidget* parent)
    :CustomWidget(parent)
{
    m_pMainLayout = new QHBoxLayout(this);
    m_pMainLayout->setSpacing(0);
    m_pMainLayout->setMargin(0);

    m_pTagLabel = new QLabel();
    m_pMainLayout->addWidget(m_pTagLabel);
    m_pTagLabel->setAlignment(Qt::AlignRight | Qt::AlignVCenter);
    m_pTagLabel->setSizePolicy(QSizePolicy::Fixed, QSizePolicy::Expanding);

    // 设置默认第0列宽度
    setColumnWidth(0, 160);
    g_StyleConfig->setCurrentStyle(this, "GroupContent");
}

UICustomCombineControlBase::~UICustomCombineControlBase()
{

}

void UICustomCombineControlBase::setColumnWidth(int column, int width)
{
    int count = m_pMainLayout->count();
    int number = 0;
    for (int i=0; i<count; ++i)
    {
        QWidget* pWidget = m_pMainLayout->itemAt(i)->widget();
        if (pWidget == nullptr)
            continue;

        if (number == column)
        {
            pWidget->setFixedWidth(width);
            return;
        }
        number++;
    }
}

void UICustomCombineControlBase::setTagText(const QString& tagText)
{
    m_pTagLabel->setText(tagText);
}

void UICustomCombineControlBase::setTextAlign(Qt::Alignment alignment)
{
    m_pTagLabel->setAlignment(alignment);
}

// 设置宽度和高度
void UICustomCombineControlBase::setWidth(int width)
{
    m_nWidth = width;
    this->setMinimumWidth(width);
}

void UICustomCombineControlBase::setHeight(int height)
{
    m_nHeight = height;
    this->setMinimumHeight(height);
}

QSize UICustomCombineControlBase::sizeHint() const
{
    QSize size(m_nWidth, m_nHeight);
    return size;
}
