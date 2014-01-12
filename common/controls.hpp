#ifndef CONTROLS_HPP
#define CONTROLS_HPP

#define 	GLFW_KEY_PAGE_UP   266
#define 	GLFW_KEY_PAGE_DOWN   267

void computeMatricesFromInputs();
glm::mat4 getViewMatrix();
glm::mat4 getProjectionMatrix();

#endif