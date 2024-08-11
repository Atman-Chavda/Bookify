<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body>
        <!--        <form method="post" action="signup.jsp">
                    Enter your name: <input type="text" name="fullname"><br/>
                    Enter username: <input type="text" name="username"><br/>
                    Enter password: <input type="password" name="password"><br/>
                    <input type="submit" value="Sign up">
                </form>-->
        <!--
  Heads up! 👋

  Plugins:
    - @tailwindcss/forms
        -->

        <section class="bg-white">
            <div class="lg:grid lg:min-h-screen lg:grid-cols-12">
                <aside class="relative block h-16 lg:order-last lg:col-span-5 lg:h-full xl:col-span-6">
                    <img
                        alt=""
                        src="https://images.unsplash.com/photo-1605106702734-205df224ecce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"
                        class="absolute inset-0 h-full w-full object-cover"
                        />
                </aside>

                <main
                    class="flex items-center justify-center px-8 py-8 sm:px-12 lg:col-span-7 lg:px-16 lg:py-12 xl:col-span-6"
                    >
                    <div class="max-w-xl lg:max-w-3xl">
                        <a class="block text-blue-600" href="#">
                            <span class="sr-only">Home</span>
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="h-8 sm:h-10">
                            <path d="M11.25 4.533A9.707 9.707 0 0 0 6 3a9.735 9.735 0 0 0-3.25.555.75.75 0 0 0-.5.707v14.25a.75.75 0 0 0 1 .707A8.237 8.237 0 0 1 6 18.75c1.995 0 3.823.707 5.25 1.886V4.533ZM12.75 20.636A8.214 8.214 0 0 1 18 18.75c.966 0 1.89.166 2.75.47a.75.75 0 0 0 1-.708V4.262a.75.75 0 0 0-.5-.707A9.735 9.735 0 0 0 18 3a9.707 9.707 0 0 0-5.25 1.533v16.103Z" />
                            </svg>                            
                        </a>

                        <h1 class="mt-6 text-2xl font-bold text-gray-900 sm:text-3xl md:text-4xl">
                            Welcome to Reader's Zone! 
                        </h1>

                        <p class="mt-4 leading-relaxed text-gray-500">
                           Dive into the world of fiction, history, mystery and much more with our easy-to-use website!
                        </p>

                        <form action="signup.jsp" class="mt-8 grid grid-cols-6 gap-6">
                            <div class="col-span-6 sm:col-span-3">
                                <label for="FirstName" class="block text-sm font-medium text-gray-700">
                                    First Name
                                </label>

                                <input
                                    type="text"
                                    id="FirstName"
                                    name="first_name"
                                    class="mt-1 w-full rounded-md border-gray-200 bg-white text-sm text-gray-700 shadow-sm"
                                    />
                            </div>

                            <div class="col-span-6 sm:col-span-3">
                                <label for="LastName" class="block text-sm font-medium text-gray-700">
                                    Last Name
                                </label>

                                <input
                                    type="text"
                                    id="LastName"
                                    name="last_name"
                                    class="mt-1 w-full rounded-md border-gray-200 bg-white text-sm text-gray-700 shadow-sm"
                                    />
                            </div>

                            <div class="col-span-6">
                                <label for="Email" class="block text-sm font-medium text-gray-700"> Email </label>

                                <input
                                    type="email"
                                    id="Email"
                                    name="email"
                                    class="mt-1 w-full rounded-md border-gray-200 bg-white text-sm text-gray-700 shadow-sm"
                                    />
                            </div>
                            
                            <div class="col-span-6 sm:col-span-3">
                                <label for="UserName" class="block text-sm font-medium text-gray-700">
                                    Username
                                </label>

                                <input
                                    type="text"
                                    id="UserName"
                                    name="user_name"
                                    class="mt-1 w-full rounded-md border-gray-200 bg-white text-sm text-gray-700 shadow-sm"
                                    />
                            </div>

                            <div class="col-span-6 sm:col-span-3">
                                <label for="Password" class="block text-sm font-medium text-gray-700"> Password </label>

                                <input
                                    type="password"
                                    id="Password"
                                    name="password"
                                    class="mt-1 w-full rounded-md border-gray-200 bg-white text-sm text-gray-700 shadow-sm"
                                    />
                            </div>

                            <div class="col-span-6 sm:col-span-3">
                                <label for="PasswordConfirmation" class="block text-sm font-medium text-gray-700">
                                    Password Confirmation
                                </label>

                                <input
                                    type="password"
                                    id="PasswordConfirmation"
                                    name="password_confirmation"
                                    class="mt-1 w-full rounded-md border-gray-200 bg-white text-sm text-gray-700 shadow-sm"
                                    />
                            </div>

                            <div class="col-span-6">
                                <label for="MarketingAccept" class="flex gap-4">
                                    <input
                                        type="checkbox"
                                        id="MarketingAccept"
                                        name="marketing_accept"
                                        class="size-5 rounded-md border-gray-200 bg-white shadow-sm"
                                        />

                                    <span class="text-sm text-gray-700">
                                        I want to receive emails about events, product updates and company announcements.
                                    </span>
                                </label>
                            </div>

                            <div class="col-span-6">
                                <p class="text-sm text-gray-500">
                                    By creating an account, you agree to our
                                    <a href="#" class="text-gray-700 underline"> terms and conditions </a>
                                    and
                                    <a href="#" class="text-gray-700 underline">privacy policy</a>.
                                </p>
                            </div>

                            <div class="col-span-6 sm:flex sm:items-center sm:gap-4">
                                <button
                                    class="inline-block shrink-0 rounded-md border border-blue-600 bg-blue-600 px-12 py-3 text-sm font-medium text-white transition hover:bg-transparent hover:text-blue-600 focus:outline-none focus:ring active:text-blue-500"
                                    >
                                    <input type="submit" value="Create an account"/>
                                </button>

                                <p class="mt-4 text-sm text-gray-500 sm:mt-0">
                                    Already have an account?
                                    <a href="loginform.jsp" class="text-gray-700 underline">Log in</a>.
                                </p>
                            </div>
                        </form>
                    </div>
                </main>
            </div>
        </section>
    </body>
</html>
