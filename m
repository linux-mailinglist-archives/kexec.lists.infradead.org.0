Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4409AE7EB
	for <lists+kexec@lfdr.de>; Tue, 10 Sep 2019 12:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzpvfDYlM7bzUY93sCPetoIst3a8LC4fWhMYVC2wPRs=; b=M/YS6sWHwzXJDQ
	RqkqYU8s15Ko6p27eEsTzpDPDUgDo4ahPR+bIzOwk9gynYfnk+Gh00N+lddG6SRJeouVx8Vh4vqcI
	DyNBr14C8omvXGUrMteBgcx26t7p8RY/H+jNPVXL52fyGfTfxPktp304s6VunPWMoRwVfRA4GnlL9
	EN/8eB9YpbRDhXyk7hjJcZ1uIzF2VNRuiKQ+K/oN4T9YsbGffuPKQQiQtUqQUotd3flAKZuvy+U0v
	6EFz+1xkHVQAKhgsYUY07PTmoXZ/QZrkDu8LiDHZwP4F4GPWRH4S36KPbsOpn3ZuafWbRMIsZZYYP
	IdLxOP5lHslKwXLhjwSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7dHi-0007K8-Eg; Tue, 10 Sep 2019 10:22:06 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7dHf-0007Hj-NH
 for kexec@lists.infradead.org; Tue, 10 Sep 2019 10:22:05 +0000
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6FCA53B3C0
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 10:22:03 +0000 (UTC)
Received: by mail-pf1-f199.google.com with SMTP id x1so3386685pfn.19
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 03:22:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gLvy8LiXhmygo2HpBcMKKQ2H5v2hyHmKks1YfxB4sew=;
 b=SoMWlJJHgJJl4tmGpGR1et/5E7X/+b2+xoQxHuG0d+4juTcZ2rEnB6MK14xfbYY61/
 627EkAcSYfzvUU0qDSdkeGcFtJ6P6bdl4usURFGLYQXpgB6N5nKCyw9pnQNIqUwjPwIy
 JCbAnGJIP/LkWve6a9oXfRLReKB/F3KKdtc4CnMZpoB7g8WIXUyB9Ov0dQY68pI3CNC7
 F+yxS2zEZUJMef9cMAVAu4kWAYlVTAC+AUoi64OFU56xuqeD6PuayotifGqf7NAPPtt1
 vg3dBXoj/1Qf2XAP2bIhKj0jFnGlhugigmV6AKXzikjniLKPPPqVrSoIw/nOEAuULThz
 POKA==
X-Gm-Message-State: APjAAAXZXSnVUG+ZLlrprVfHX3P7W6Dln3MsdikFaDyqziT/9TH+ZwdO
 yOwu+NfhrnFS/976Vk+YkcwHO5epij7QkOrw8auloxz8xT0xiUmBSSKSsKEoGNb7hbX1XWxMz6d
 ac/q2N5C7TcaKMzJDHPhb
X-Received: by 2002:a62:1b97:: with SMTP id
 b145mr19840659pfb.163.1568110922527; 
 Tue, 10 Sep 2019 03:22:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzCxFI4xWsEE0I841oYIlq5xYuUeWbvxXUxCEqhbv8yG1HVLjeQhP5Qx4Tcj6OhGNaf9JwusQ==
X-Received: by 2002:a62:1b97:: with SMTP id
 b145mr19840639pfb.163.1568110922300; 
 Tue, 10 Sep 2019 03:22:02 -0700 (PDT)
Received: from localhost ([171.48.36.77])
 by smtp.gmail.com with ESMTPSA id a29sm32711938pfr.152.2019.09.10.03.22.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Sep 2019 03:22:01 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 2/2] i386/kexec-mb2-x86.c: Fix compilation warning
Date: Tue, 10 Sep 2019 15:51:50 +0530
Message-Id: <20190910102150.7229-3-bhsharma@redhat.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190910102150.7229-1-bhsharma@redhat.com>
References: <20190910102150.7229-1-bhsharma@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_032203_785046_A13AD6EF 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: bhsharma@redhat.com, bhupesh.linux@gmail.com, horms@verge.net.au
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBmaXhlcyB0aGUgZm9sbG93aW5nIGNvbXBpbGF0aW9uIHdhcm5pbmcgaW4KJ2kz
ODYva2V4ZWMtbWIyLXg4Ni5jJyByZWdhcmRpbmcgdGhlIHZhcmlhYmxlICdyZXN1bHQnCndoaWNo
IGlzIHNldCBidXQgbm90IHVzZWQ6CgprZXhlYy9hcmNoL2kzODYva2V4ZWMtbWIyLXg4Ni5jOjQw
Mjo2Ogogd2FybmluZzogdmFyaWFibGUg4oCYcmVzdWx04oCZIHNldCBidXQgbm90IHVzZWQgWy1X
dW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCiAgaW50IHJlc3VsdDsKICAgICAgXn5+fn5+CgpDYzog
U2ltb24gSG9ybWFuIDxob3Jtc0B2ZXJnZS5uZXQuYXU+ClNpZ25lZC1vZmYtYnk6IEJodXBlc2gg
U2hhcm1hIDxiaHNoYXJtYUByZWRoYXQuY29tPgotLS0KIGtleGVjL2FyY2gvaTM4Ni9rZXhlYy1t
YjIteDg2LmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9rZXhlYy9hcmNoL2kzODYva2V4ZWMtbWIyLXg4Ni5jIGIva2V4ZWMvYXJjaC9pMzg2L2tl
eGVjLW1iMi14ODYuYwppbmRleCA3ZWFhYjBjLi5iODM5ZDU5IDEwMDY0NAotLS0gYS9rZXhlYy9h
cmNoL2kzODYva2V4ZWMtbWIyLXg4Ni5jCisrKyBiL2tleGVjL2FyY2gvaTM4Ni9rZXhlYy1tYjIt
eDg2LmMKQEAgLTM5OSw3ICszOTksNiBAQCBpbnQgbXVsdGlib290Ml94ODZfbG9hZChpbnQgYXJn
YywgY2hhciAqKmFyZ3YsIGNvbnN0IGNoYXIgKmJ1Ziwgb2ZmX3QgbGVuLAogCWNoYXIgKmNvbW1h
bmRfbGluZSA9IE5VTEwsICp0bXBfY21kbGluZSA9IE5VTEw7CiAJaW50IGNvbW1hbmRfbGluZV9s
ZW47CiAJY2hhciAqaW1hZ2VuYW1lLCAqY3AsICphcHBlbmQgPSBOVUxMOzsKLQlpbnQgcmVzdWx0
OwogCWludCBvcHQ7CiAJaW50IG1vZHVsZXMsIG1vZF9jb21tYW5kX2xpbmVfc3BhY2U7CiAJdWlu
dDY0X3QgbWJpX3B0cjsKQEAgLTQyOSw3ICs0MjgsNiBAQCBpbnQgbXVsdGlib290Ml94ODZfbG9h
ZChpbnQgYXJnYywgY2hhciAqKmFyZ3YsIGNvbnN0IGNoYXIgKmJ1Ziwgb2ZmX3QgbGVuLAogCWNv
bW1hbmRfbGluZV9sZW4gPSAwOwogCW1vZHVsZXMgPSAwOwogCW1vZF9jb21tYW5kX2xpbmVfc3Bh
Y2UgPSAwOwotCXJlc3VsdCA9IDA7CiAJd2hpbGUoKG9wdCA9IGdldG9wdF9sb25nKGFyZ2MsIGFy
Z3YsIHNob3J0X29wdGlvbnMsIG9wdGlvbnMsIDApKSAhPSAtMSkKIAl7CiAJCXN3aXRjaChvcHQp
IHsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
