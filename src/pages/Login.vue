<template>
    <div style="width: 100%; background: asset/img/loginbg.jpg">
        <div id="login" style="">
            <span style="" class="loginHeader">商品数据中心</span><br>
            <span class="loginHeader">Data Management Center</span><br>
            <div style="" class="loginForm">
                <el-form :model="loginForm" :rules="loginRules" ref="loginForm" label-width="100px" class="demo-ruleForm">
                    <el-form-item label="用户名:" prop="username">
                        <el-input v-model="loginForm.username"></el-input>
                    </el-form-item>
                    <el-form-item label="密 码:" prop="password">
                        <el-input type="password" v-model="loginForm.password"></el-input>
                    </el-form-item>
                    <el-form-item>
                        <el-button type="primary" @click="">登录</el-button>
                        <el-button @click="resetForm('loginForm')">重置</el-button>
                    </el-form-item>
                </el-form>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                loginForm: {
                    username: '',
                    password: ''
                },
                loginRules : {
                    username: [
                        {required: true, message:'请输入用户名', trigger:'blur'},
                        {min:3, max:18, message:'用户名长度在 3 到 18 个字符', trigger: 'blur'}
                    ],
                    password: [
                        {required: true, message:'请输入密码', trigger:'blur'},
                        {min:3, max:18, message:'密码长度错误', trigger: 'blur'}
                    ]
                },
            }
        },
        methods: {
            resetForm(formName) {
                this.$refs[formName].resetFields();
            }
        },
        name: "Login"
    }
</script>

<style scoped>
    #login {
        position: absolute;
        left: 50%;
        top: 50%;
        width:400px;
        height:250px;
        margin-left:-100px;
        border:1px solid gainsboro;
        margin-top:-50px;box-shadow: 3px 3px 2px #888888;
        /*border:2px solid;*/
        border-radius:5px;
        -moz-border-radius:25px;
        text-align: center;
        color: #606266;
    }
    .loginForm {
        width: 350px;
        margin-top: 5px
    }
    .loginHeader {
        font-family: "Helvetica Neue",Helvetica,"PingFang SC","Hiragino Sans GB","Microsoft YaHei","微软雅黑",Arial,sans-serif;
        font-size: large;
    }
</style>