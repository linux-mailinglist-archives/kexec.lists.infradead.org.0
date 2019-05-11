Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798E41A5BD
	for <lists+kexec@lfdr.de>; Sat, 11 May 2019 02:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EY2eCS010O0uerrp3PPkLM/IE2n/C4K0ErYcP9PyTdE=; b=NOFwBZiJz/tvwg
	+bZlhKLhsTPk3ElALxnXzNqK9MNNlPSr8zF0kdSqV3eDdUAcgZCicL4w5JbyDVn+ILKnoCb2GxIb7
	bQv8pXmoNWAXVTSGxPv0lVoJ74ll4AU5f75HUGG6gXW/gnZ7Tqj80+WzXxsJsFdEZSg6MtvM2M6qo
	VK5UwHREu9OoCWXRtT9D1IbAGSYtIzYI38LAsMfr62XW0wFtEg81yqBHNan2p6kx5E7T2jD8QndqN
	AKtsvQppKzW6abhiVP+RLdyoHn5DeuGnj8/j+8NKjYjuEsY0qpbd7g+wzEVYTqjLflQPf+hd7xho4
	w5ffS/Us048l1p81hgDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPFgn-0008LW-2i; Sat, 11 May 2019 00:16:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPFgj-0008L7-9K
 for kexec@lists.infradead.org; Sat, 11 May 2019 00:16:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id 13so4024996pfw.9
 for <kexec@lists.infradead.org>; Fri, 10 May 2019 17:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=5x2tWauOasbmQygmVEvJr0U0PUarRPwShg51MdnJLjQ=;
 b=NYKrGaSy3oF5JiFyyguay0cqndzovy1Tn3SS3vaNjZwpXKRuQy0zWkWUd9u/d/HN6U
 5CMUK0MO/TDYq2oNKHyk8qs+w2PeD9GHwj3oa7nQ/WP3u6dY+axSPxqLmsCM+oSqz4Gu
 FdZJNC8E4a/27AHMcIVtRU7hPnoexyVQGJwC0+ILnA4VFpmrNR9JMVguBX6jUFOZ60gt
 rIOhzvyZlierHLXSR/qV7I9o4Vn5JUWaQqjyKazH+1/g6JEiDBI+CHocGIpZRfjDUHUe
 jmpP+Ol2NQHqb9A4AjGpq1Rq3dvzMi3GYCvUP0v7MbB8EjkmetHpjN4kGhb4MqkZn3g8
 cmjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=5x2tWauOasbmQygmVEvJr0U0PUarRPwShg51MdnJLjQ=;
 b=om9Hsvjc7RgexhUWNph8/NruE1hBKEHaAPlJu85Nc/iaB1NaT3IJUAEVaNHKF30pCN
 JQQd3DCbWUvaX2v0Nt/sMGra/d61opozS6toinMepP1W5m2OJU2rgWZrivtnOp5mCHub
 1wukmHaYs0tHKN5AS7yNbBbG9IzYP6IajZu3vOFnJSYAAqTemfceVX8MIdT+g47iJ0N4
 8pDVwlKCZfe72bHLhlDxcwK8pSQ/6Y5teKTojlFEzJ8VcWecd1tVeQdCKwaeQG3Tn/O1
 AsSnwxfdp2cBMMh5aiQ+SIovqjTMVct0BrnXBWqnlkkjyPx72ll5JPDTTKllWFBUGPvZ
 bctQ==
X-Gm-Message-State: APjAAAUmo4Qa+ChLXYF9m4uoVfnZWfEuqkeYEdj3AYNHuwxmvjt6MqBs
 gS20Ld75YzUnhABqrLzlMN9Aw0A5bMOxrd9v01c=
X-Google-Smtp-Source: APXvYqx1xKu0zJ3XE0Jwmh+BulASMoZnGAAwoGQNyC0SpKI616cDoMY6/HdpLNcr/L7AUE7av17Z1RAHQNfSMQmNW24=
X-Received: by 2002:aa7:8acb:: with SMTP id b11mr17929164pfd.115.1557533787604; 
 Fri, 10 May 2019 17:16:27 -0700 (PDT)
MIME-Version: 1.0
From: prakhar srivastava <prsriva02@gmail.com>
Date: Fri, 10 May 2019 17:16:16 -0700
Message-ID: <CAEFn8q+rT2_0TFb0fKA6ixOvC3H5R5KpR0zFiTOXa_4U-9HeUw@mail.gmail.com>
Subject: Carrying over the ima log during kexec_file_load
To: linux-kernel@vger.kernel.org, linux-integrity@vger.kernel.org, 
 linux-security-module@vger.kernel.org, kexec@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_171629_327146_FE4F2A38 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prsriva02[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (prsriva02[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: bhe@redhat.com, dyoung@redhat.com, jmorris@namei.org,
 Mimi Zohar <zohar@linux.ibm.com>, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGksCgpJIGFtIGN1cnJlbnRseSBsb29raW5nIGF0IGNhcnJ5aW5nIG92ZXIgdGhlIGltYSBsb2cg
ZnJvbSB0aGUgY3VycmVudAprZXJuZWwgdG8gdGhlIG5leHQga2VybmVsIGR1cmluZyBzb2Z0IHJl
Ym9vdChrZXhlY19maWxlX2xvYWQpIGZvciBhcm02NAphbmQgeDg2XzY0LgpEdXJpbmcgc29mdCBy
ZWJvb3Qoa2V4ZWNfZmlsZV9sb2FkKSBUUE0gYm9vdCBQQ1LigJlzKFBDUnMgMCB0aHJvdWdoIDcp
CmFyZSBub3QgcmVzZXQgb3IgZXh0ZW5kZWQgYW5kIHRodXMgdGhlIGJvb3QgYWdncmVnYXRlIGRv
ZXMgbm90IGNoYW5nZSwKbGVhdmluZyB0aGUgbmV3IGtlcm5lbCB3aXRoIGEgc2Vuc2Ugb2Ygc2Vj
dXJlIGJvb3QuCkR1cmluZyBrZXhlY19maWxlX2xvYWQgdGhlIGtlcm5lbCBmaWxlIHNpZ25hdHVy
ZSBpcyB2YWxpZGF0ZWQgdGhyb3VnaCBQRQpmaWxlIHNpZ25hdHVyZSB2YWxpZGF0aW9uLgpUaGUg
Ym9vdCBjbWRsaW5lIGFyZ3Mgd2lsbCBhbHNvIGJlIG1lYXN1cmVkIHdpdGgK4oCca2V4ZWMgY21k
bGluZSBidWZmZXIgbWVhc3VyZeKAnSBjaGFuZ2Ugd2hpY2ggaXMgaW4gcHJvZ3Jlc3MuCmh0dHBz
Oi8vbGttbC5vcmcvbGttbC8yMDE5LzUvMTAvNzI4CgpMb29raW5nIGF0IHRoZSBwb3dlcnBjIGlt
cGxlbWVudGF0aW9uIG9mIGtleGVjX2ZpbGVfbG9hZCwgIG1ha2luZwpjaGFuZ2UgdG8gdGhlIGtp
bWFnZV9hcmNoIGFzIGJlbG93IHNlZW1zIG1vc3QgcmVhc29uYWJsZS4KClN0cnVjdCBraW1hZ2Vf
YXJjaCB7CiAgICAgICAgICAgICAgICDigKYKICAgICAgICAgICAgICAgIGltYV9sb2dfYnVmZmVy
CiAgICAgICAgICAgICAgICBpbWFfbG9nX2J1ZmZlcl9zaXplCn07CgpBZGQgcmVzcGVjdGl2ZSBl
bnRyaWVzIGluIGR0Yi9mZHQgYW5kIHJlYWQgdGhlIHNhbWUgaW4gdGhlIG5leHQga2VybmVsLgpO
byBjaGFuZ2VzIHRvIHRoZSBwdXJnYXRvcnkgc2hvdWxkIGJlIG5lZWRlZCBzaW5jZSBubyBrZXJu
ZWwgc2VnbWVudHMKYXJlIGNoYW5nZWQuCgpJcyBhbnlvbmUgYWxyZWFkeSBsb29raW5nIGF0IHRo
aXM/CklmIG5vdCwgSSB3YW50IHRvIHVuZGVyc3RhbmQgd2hhdOKAmXMgdGhlIGJlc3QgYXBwcm9h
Y2ggZm9yIHRoaXMgaXM/CgpUaGFua3MsClByYWtoYXIgU3JpdmFzdGF2YQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0Cmtl
eGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9rZXhlYwo=
