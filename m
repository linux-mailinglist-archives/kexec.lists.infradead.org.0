Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9421D1911
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 17:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3eJgWcbdjxQmlUA3tPwGvrXK0Ni5ZeLrYXC1draUM0=; b=UozlUbKXnKuhzc
	3uk7/AQug2wd6m2aAgeHm9ow9uG2ITLSO0y9Yi9V3jHsdHbhC9JHyhStdH6JR6fiCoZXX+KxmmwH8
	WRhGLmbg9CFfYbFgs/xVinTHfLNcZri2Gy9h4sbbcAvYyBLz17E3o+5c3+gfIp8/ECrdSBS9RWoKE
	+WKcNELcgm9dVM1V+1N9yv2Mfe06E71+JdvvfgXCnbipOEh8MJg6MyNJehXTN6Pp6CsndAXhVAg1D
	8aOXISZFSUrQ/xrxPQn6i6wkMBsiqHsQVHF0bVXE2H/OpsCbT0PbqsvO2AJWQoxgGqvn9Y+rNtsgM
	JJGEj176x21udE4dFjPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtCF-0000zz-BK; Wed, 13 May 2020 15:21:23 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtC8-0000xi-2a
 for kexec@lists.infradead.org; Wed, 13 May 2020 15:21:20 +0000
Received: by mail-pf1-f193.google.com with SMTP id w65so8127026pfc.12
 for <kexec@lists.infradead.org>; Wed, 13 May 2020 08:21:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L2EmjNUNQ4Z5jimRhohvy5E6UFn8J7/n3AurcqTssfc=;
 b=q70u8waiN9S4ufwCzfaR2TSNQbYPsdW0qXcSczFkw1sX10vtlAkM/ON3rLl2VJhTXw
 Z8xN+1Yyl9O7wviqXJReREZKa9higJNrWzyhH+Uv1NdN1+1rya1GT7wsDignhzlxTa14
 QhOpHJJCKRu0bn/OwM09VwiC9oU2kXHlT8jvYLEUSR4GhZBHiMSTtFpg9dfYKuZ746c6
 fExEf/5qx2R7l/xs/MF3ruUr1Nc1KxQXdCXOA6foSQ1k0ByxOyrwnctXR06DxBpGMov5
 w84vnVlDteZtKaTZckGGWxW2VJmGVnbZuixuyWHjVstowZ+hh4PSsieid5QNYwyWmOYR
 CvAg==
X-Gm-Message-State: AGi0PubmDnXph83ZIGzmF22a2sl8UDOPVh8fIpL571eLL4cOg+DrQ4TG
 N39tH0RucEAbRYL7RMFBF94=
X-Google-Smtp-Source: APiQypLjceC/PEfdNROkTqxbFVK4lToQw5U4tMxxK9Fb2TK7BTD2Imz/M+WiRtr+fq6JB7P+q54wFA==
X-Received: by 2002:a63:1361:: with SMTP id 33mr23946447pgt.265.1589383274907; 
 Wed, 13 May 2020 08:21:14 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id j2sm15315389pfb.73.2020.05.13.08.21.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 08:21:12 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 4BEB0418C0; Wed, 13 May 2020 15:21:12 +0000 (UTC)
From: Luis Chamberlain <mcgrof@kernel.org>
To: viro@zeniv.linux.org.uk, gregkh@linuxfoundation.org, rafael@kernel.org,
 ebiederm@xmission.com, jeyu@kernel.org, jmorris@namei.org,
 keescook@chromium.org, paul@paul-moore.com, stephen.smalley.work@gmail.com,
 eparis@parisplace.org, nayna@linux.ibm.com, zohar@linux.ibm.com
Subject: [PATCH 1/3] fs: unexport kernel_read_file()
Date: Wed, 13 May 2020 15:21:06 +0000
Message-Id: <20200513152108.25669-2-mcgrof@kernel.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200513152108.25669-1-mcgrof@kernel.org>
References: <20200513152108.25669-1-mcgrof@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_082119_655509_DE76DF3A 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: scott.branden@broadcom.com, selinux@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, geert@linux-m68k.org,
 dan.carpenter@oracle.com, skhan@linuxfoundation.org,
 linux-fsdevel@vger.kernel.org, tglx@linutronix.de,
 linux-integrity@vger.kernel.org, bauerman@linux.ibm.com,
 Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

There are no modular uses of kernel_read_file(), so just unexport it.

Suggested-by: Al Viro <viro@zeniv.linux.org.uk>
Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 fs/exec.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/exec.c b/fs/exec.c
index 23dc2b45d590..9791b9eef9ce 100644
--- a/fs/exec.c
+++ b/fs/exec.c
@@ -988,7 +988,6 @@ int kernel_read_file(struct file *file, void **buf, loff_t *size,
 	allow_write_access(file);
 	return ret;
 }
-EXPORT_SYMBOL_GPL(kernel_read_file);
 
 int kernel_read_file_from_path(const char *path, void **buf, loff_t *size,
 			       loff_t max_size, enum kernel_read_file_id id)
-- 
2.26.2


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
