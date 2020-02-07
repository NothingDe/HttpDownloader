#include "UICustomSwitchControl.h"

UICustomSwitchControl::UICustomSwitchControl(QWidget* parent)
    :UICustomCombineControlBase(parent)
{
    m_pSwitchWidget = new UICustomSwitchWidget;
    m_pMainLayout->addWidget(m_pSwitchWidget);

    m_pMainLayout->addStretch();

    this->setWidth(400);
    this->setHeight(30);

    QObject::connect(m_pSwitchWidget, &UICustomSwitchWidget::valueChanged, \
                     this, &UICustomSwitchControl::valueChanged);
}

UICustomSwitchControl::~UICustomSwitchControl()
{

}

// 设置/获取当前值
void UICustomSwitchControl::setCurrentValue(bool isOn)
{
    m_pSwitchWidget->setSwitchStatus(isOn, false);
}

bool UICustomSwitchControl::getCurrentValue(void)
{
    return m_pSwitchWidget->getSwitchStatus();
}
