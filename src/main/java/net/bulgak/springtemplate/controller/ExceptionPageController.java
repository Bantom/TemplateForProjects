package net.bulgak.springtemplate.controller;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Controller for catching and handling exceptions.
 */
@ControllerAdvice
public class ExceptionPageController {

    private static final Logger logger = Logger.getLogger(ExceptionPageController.class);

    @ExceptionHandler(SQLException.class)
    public String handleSQLException(HttpServletRequest request, SQLException e) {
        logger.error("Requested URL = " + request.getRequestURL());
        logger.error("SQLException was raised = " + e);
        return "general/stub";
    }


    @ExceptionHandler(IOException.class)
    public String handleIOException(HttpServletRequest request, IOException e) {
        logger.error("Requested URL = " + request.getRequestURL());
        logger.error("IOException was raised = " + e);
        return "general/stub";
    }

    @ExceptionHandler(ServletException.class)
    public String handleServletException(HttpServletRequest request, Exception e) {
        logger.error("Requested URL = " + request.getRequestURL());
        logger.error("ServletException was raised = " + e);
        return "general/stub";
    }

    @ExceptionHandler(Exception.class)
    public String handleGeneralException(HttpServletRequest request, Exception e) {
        logger.error("Requested URL = " + request.getRequestURL());
        logger.error("Exception was raised = " + e);
        return "general/stub";
    }
}
