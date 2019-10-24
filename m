Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38ADE375E
	for <lists+kexec@lfdr.de>; Thu, 24 Oct 2019 18:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ROzE1WXOtqE/lQUJr0q73+zjhYYQYyFiETrFLG1Cm/A=; b=ZLflLQFewsy8Xu
	zc/+dO3jZQDZ6brr5hS6lnBfBw4OYjPKsRHCAzJTBQywaIZ3C6omzbai18sOWCaVPRuN9TTQze5kA
	7651gXcRwQFYy/NuPzqiBHLf7IdRzLQ2fEVyrbHK7dA0w2bmBdpXeYk5fuJdPb8Cb7asIkgmeEFc8
	cZStXEQs6MxbXbBmMRkYKiVPU0nfbF/vkNrbXWvahrR5PnzY6xC6ZfzMX1zIio/OrhFf2qlNVZcHD
	gb1OVuhB2w9QLRoBFzZlW/Ng7d49xwJkBaDbfjFUQuK3ZFQ8b7covLgK9Q6dY7wEmXkL5sRmatIWX
	JtTU4XPij+NUJPdgua7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNfbb-0006bs-Aj; Thu, 24 Oct 2019 16:04:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfbY-0006bU-BC
 for kexec@lists.infradead.org; Thu, 24 Oct 2019 16:04:53 +0000
Received: by mail-pf1-x443.google.com with SMTP id v4so15430172pff.6
 for <kexec@lists.infradead.org>; Thu, 24 Oct 2019 09:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=u7esaTO5H59xPg8a0sJ0thzeYFqNzYsJ08FBQJ5IpQA=;
 b=u6A7WCATZ71/Aa/2ntEO3Ls5+wBJe2hvWlZYN1pQeCkneU7R/flWY9JiSXWVwhtqKS
 O6pIiafr/ms+48ehljhhV+n+K9rzxpY3kh0dB8ZyZ8x+5CoMi96zXxDQIsllzniC3TXn
 uAnouZig2h96sl7kQfaCaZy7pGFNjtkCUIURJn0yvDrAJTT6rq5ij7q94sIOoDRlKbJf
 wFWG+QJpH05Eejb26K5R8GoDV5h+rlKGS/FV3JYjhDfjOlwRSEJ2xC+qpdG4/jcA/CUe
 478RPoFsQC8lx7DIhVV8ZMMGQMDcnKO7/j2sy3nhQzreOE6NOFDb8icE/mG0OUGj8m2j
 iV+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=u7esaTO5H59xPg8a0sJ0thzeYFqNzYsJ08FBQJ5IpQA=;
 b=iFQLorKi1vNIk3S68gRY8eS+wsHPo1nwGfGR7Qo15zJN20m5l6Oi76LaAXLCGPODuP
 /h2r7iTKB8YU2VvzZ3jm2y2SyTGqUprR3eBD2RybCPhGEWcjIXn447rTZ8bjsxOL0MGN
 t17vLUZg7FJVZF2odhRHz3F8COu8q0zB/vKX76WcYHO56BuwyajwuO/0rpMf+9wLA4M5
 SqLT5oQmHNlkCbFbu3Qq0dnoGjMknQy2i0TeDC2E8PHkNJ29wYVexO1fsCjcTmXGKx9w
 HNksoVBc26iZswpQC3EeWVnbvVyUf2Mja5D6aPPrIGwt3HbSh5++YVIG2UzbJPhRwcum
 rOow==
X-Gm-Message-State: APjAAAXHZa9Fl0UFzd9/9GTqF9T6TCVjbgNzzQFfcZ+XRywPYu3jPhe4
 8Ja9shQBjrkt5gkMUX24MIQDOaCi
X-Google-Smtp-Source: APXvYqxAsVmloV5b7J5Z/K6Nn/6NC+eJLCIea3dl5G74WfC6t+p4BUzwiHb2+Tn6AN22KBqJSzWnLQ==
X-Received: by 2002:a62:60c7:: with SMTP id
 u190mr18170151pfb.256.1571933090980; 
 Thu, 24 Oct 2019 09:04:50 -0700 (PDT)
Received: from [192.168.31.113] ([43.224.157.51])
 by smtp.gmail.com with ESMTPSA id b1sm10821872pfa.135.2019.10.24.09.04.48
 for <kexec@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Oct 2019 09:04:50 -0700 (PDT)
To: kexec@lists.infradead.org
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Ubuntu 18.04: Second kernel launch vai "kexec -e "gives ata1: failed
 to reset engine error
Message-ID: <d9c0d63f-36db-c109-c22d-2108d4dca2ec@gmail.com>
Date: Thu, 24 Oct 2019 21:34:41 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_090452_383245_43EF1E23 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.pkin[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgQWxsLAoKSSBhbSB0ZXN0aW5nICJrZXhlYyAtZSIgb3B0aW9uIHdpdGggVWJ1bnR1IDE4LjA0
IGhhdmluZyBMaW51eC01LjQtUkM0LiBJCmFtIHVzaW5nIGJlbG93IGNvbW1hbmRzCgokIGtleGVj
IC1sIC9ib290L3ZtbGludXotYHVuYW1lIC1yYCAtLWluaXRyZD0vYm9vdC9pbml0cmQuaW1nLWB1
bmFtZSAtcmAKLS1yZXVzZS1jbWRsaW5lCgokIGtleGVjIC1lCgpXaGVuIHNlY29uZCBrZXJuZWwg
bGF1bmNoZXMsIGl0IGdpdmVzIGJlbG93IGVycm9yIGZvbGxvd2VkIGJ5IG1vdW50IG9mCmJ1c3kt
Ym94LgoKWyAgMjc5LjY5MDU3NV0gYXRhMTogc29mdHJlc2V0IGZhaWxlZCAoMXN0IEZJUyBmYWls
ZWQpClsgIDI3OS42OTU0NDZdIGF0YTE6IGxpbWl0aW5nIFNBVEEgbGluayBzcGVlZCB0byAzLjAg
R2JwcwpbICAyODAuOTEwMDIwXSBhdGExOiBTQVRBIGxpbmsgZG93biAoU1N0YXR1cyAwIFNDb250
cm9sIDMyMCkKWyAgMjgyLjYyNjAxOF0gYXRhMTogU0FUQSBsaW5rIGRvd24gKFNTdGF0dXMgMCBT
Q29udHJvbCAzMDApClsgIDI4Mi42MzE0MDldIGF0YTE6IGxpbmsgb25saW5lIGJ1dCAxIGRldmlj
ZXMgbWlzY2xhc3NpZmllZCwgcmV0cnlpbmcKWyAgMjgyLjYzNzY2NV0gYXRhMTogcmVzZXQgZmFp
bGVkIChlcnJubz0tMTEpLCByZXRyeWluZyBpbiA5IHNlY3MKWyAgMjk4LjI5NDU0Nl0gYXRhMTog
ZmFpbGVkIHRvIHJlc2V0IGVuZ2luZSAoZXJybm89LTUpClsgIDMwMi4wNDI5NjddIGF0YTE6IHNv
ZnRyZXNldCBmYWlsZWQgKDFzdCBGSVMgZmFpbGVkKQpbICAzMDguNzk4NjA5XSBhdGExOiBmYWls
ZWQgdG8gcmVzZXQgZW5naW5lIChlcnJubz0tNSkKWyAgMzM3LjU0NjYwNV0gYXRhMTogc29mdHJl
c2V0IGZhaWxlZCAoMXN0IEZJUyBmYWlsZWQpClsgIDMzNy41NTE0NzVdIGF0YTE6IGxpbWl0aW5n
IFNBVEEgbGluayBzcGVlZCB0byAzLjAgR2JwcwpbICAzMzguNzY2MDIyXSBhdGExOiBTQVRBIGxp
bmsgZG93biAoU1N0YXR1cyAwIFNDb250cm9sIDMyMCkKWyAgMzM5LjI3MDk0M10gYXRhMTogRUgg
cGVuZGluZyBhZnRlciA1IHRyaWVzLCBnaXZpbmcgdXAKCihpbml0cmFtZnMpCihpbml0cmFtZnMp
Cihpbml0cmFtZnMpIGxzCmRldiAgICAgIHVzciAgICAgIHZhciAgICAgIGV0YyAgICAgIHNjcmlw
dHMgIGJpbiAgICAgIHN5cyAgICAgIHRtcApyb290ICAgICBzYmluICAgICBjb25mICAgICBydW4g
ICAgICBpbml0ICAgICBsaWIgICAgICBwcm9jCgoKVGhpcyBhdGEgZXJyb3IgZ29lcyBhd2F5IGFu
ZCByb290IGZpbGUgc3lzdGVtIGdldHMgbW91bnRlZCBpZiBJIGNvbXBpbGUKa2VybmVsIHdpdGgg
Q09ORklHX1NBVEFfQUhDST15IG9wdGlvbi4KCkkgZ29vZ2xlZCBhbmQgZmluZCBvdXQgdGhhdCDi
gJxDT05GSUdfU0FUQV9BSENJPW3igJ0gY2hhbmdlIHdhcyBkb25lIGFzIHBhcnQKb2YgYmVsb3cg
YnVnIGZpeGVkIGluIHVwc3RyZWFtIGZvciBVYnVudHUuCmh0dHBzOi8vYnVncy5sYXVuY2hwYWQu
bmV0L3VidW50dS8rc291cmNlL2xpbnV4LytidWcvMTA1NjU2MwpodHRwczovL3BhdGNod29yay5v
emxhYnMub3JnL3BhdGNoLzIxODcyOC8KCkkgYW0gdHJ5aW5nIHRvIHVuZGVyc3RhbmQgd2h5IENP
TkZJR19TQVRBX0FIQ0k9bSBjYXVzaW5nIGlzc3VlIGZvcgpzZWNvbmQga2VybmVsLiBBbHNvIGhh
cyBhbnlvbmUgYWxzbyBmYWNlZCBzaW1pbGFyIHR5cGUgb2YgZXJyb3IuCgotLXBrCgpLZXhlYyB0
b29sIHZlcnNpb246IGtleGVjLXRvb2xzIDIuMC4xNgoKTGludXggYm9vdCBhcmd1bWVudHM6ICBy
b290PVVVSUQ9Nzk4YTg1OGMtNGYyMC00Yjk5LWFhNDAtOTliZmY5Mzk0MDkzIHJvCmNyYXNoa2Vy
bmVsPWF1dG8gY29uc29sZT10dHlBTUEwCgpMaW51eCB0b3AgY29tbWl0Ogpjb21taXQgN2QxOTRj
MjEwMGFkMmE2ZGRlZDU0NTg4N2QwMjc1NDk0OGNhNTI0MSAodGFnOiB2NS40LXJjNCwKb3JpZ2lu
L21hc3Rlciwgb3JpZ2luL0hFQUQpCkF1dGhvcjogTGludXMgVG9ydmFsZHMgPHRvcnZhbGRzQGxp
bnV4LWZvdW5kYXRpb24ub3JnPgpEYXRlOiAgIFN1biBPY3QgMjAgMTU6NTY6MjIgMjAxOSAtMDQw
MAoKICAgIExpbnV4IDUuNC1yYzQKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
