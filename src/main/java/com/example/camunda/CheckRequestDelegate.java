package com.example.camunda;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;
import org.springframework.stereotype.Component;

@Component
public class CheckRequestDelegate implements JavaDelegate {

  @Override
  public void execute(DelegateExecution execution) throws Exception {
    // Получаем данные из процесса
    String request = (String) execution.getVariable("request");

    // Логика проверки заявки
    boolean isApproved = checkRequest(request);

    // Устанавливаем результат проверки в переменную процесса
    execution.setVariable("isApproved", isApproved);
  }

  private boolean checkRequest(String request) {
    // Пример простой проверки заявки
    return request != null && !request.isEmpty();
  }
}