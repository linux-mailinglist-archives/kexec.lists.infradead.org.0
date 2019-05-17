Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D3A21507
	for <lists+kexec@lfdr.de>; Fri, 17 May 2019 10:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/QtLiRU01tPT5irO3xYQxZOHHBXcpGck0CX5LuZ6YWU=; b=ULuPKkzHA0ExeC
	WLHsY6UnLAVbUYr8Ke5NixDAqg3MhC2QOCACFNm/Es7UBHzP7l3sj5ESlMzwD9YJpbHQ543y6jHGh
	hIWmYbb7XtLR0FV+xn/L2T26ex/FX0TF9kVo4kz7g4T4Zs4FWmgCxYr84E644D+bLBxaTaP+UOBX1
	WfVntBsy7NlIk8p7gHP1qlxEYQo7Tlj7rWP0vS9T/ULtBxSEfDkybNmeJFsqcEG3RBFhRyCNhAhzO
	6SSRuG/F+WRSDKNUAlrUD8NKLAcMv4TusoTsqP40FH4NYRrZCc8REOzOZz9O7REL8P25E/eYMFHMP
	ZDG0PmbZbb2YMqRuSR5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXq6-00007J-G0; Fri, 17 May 2019 08:03:38 +0000
Received: from mail.tastiess.eu ([194.182.86.235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXq3-00006g-9n
 for kexec@lists.infradead.org; Fri, 17 May 2019 08:03:36 +0000
Received: by mail.tastiess.eu (Postfix, from userid 1001)
 id 205B087D76; Fri, 17 May 2019 10:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tastiess.eu; s=mail;
 t=1558080197; bh=xcvKmEMOXtJGqNZVDfue3bm1wCTxubc0BjM5QX6f570=;
 h=Date:From:To:Subject:From;
 b=qyYMYMjnpRhzlH4OHHGO+IjP24yQ0poqFvr12yysPiX8txOlTQGb0mLRCNqixLblu
 dY0erxiUv15Zs2Z+yrSr/xVLtq3t0n6FdfsBPoKKd/PhhfC8niZiER/uoi59vimavt
 Qw1FHQNulIhoJhndgkRp3LPrkG8ihqjMowKjLQjo=
Received: by mail.tastiess.eu for <kexec@lists.infradead.org>;
 Fri, 17 May 2019 08:00:54 GMT
Message-ID: <20190517095103-0.1.a.7p7.0.6uebpn95v5@tastiess.eu>
Date: Fri, 17 May 2019 08:00:54 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <k.matyas@tastiess.eu>
To: <kexec@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.tastiess.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_010335_543506_E74117B6 
X-CRM114-Status: UNSURE (   1.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

w5xkdsO2emzDtm0hCgrDiXJkZWtlcyBsZWhldCDDlm5uZWsgZWd5IG9seWFuIGp1dHRhdMOhc2kg
Y3NvbWFnLCBhbWVsbHllbCBrw7Z6ZWwgw6l2ZXMgbmV0dMOzIDQ1LjAwMCBGdCBqdXR0YXTDoXNz
YWwgdMOhbW9nYXRoYXRqYSBkb2xnb3rDs2l0LCBtaWvDtnpiZW4gYSBiw6lybsOpbCBrZWR2ZXrF
kWJiLCBlZ3llcyBtZWdoYXTDoXJvem90dCBqdXR0YXTDoXMga8O2enRlcmjDqXQga2VsbCBjc2Fr
IGtpZml6ZXRuaWU/IAoKQSBtYWd5YXIgcGlhY29uIGVneWVkw7xsw6FsbMOzIHRlcm3DqWtrw61u
w6FsYXR1bmtrYWwgZXogbGVoZXRzw6lnZXMhIE1pa8O2emJlbiBheiDDlm4gY8OpZ2Ugc3DDs3Jv
bCwgZG9sZ296w7NpIMOpbHZlemhldGlrIGEgdsOhc8OhcmzDoXMgc3phYmFkc8OhZ8OhdDoganV0
dGF0w6FzaSBrw6FydHnDoWluayDDqXMgdXRhbHbDoW55YWluayByZW5ka8OtdsO8bCBzesOpbGVz
IGvDtnJiZW4gZWxrw7ZsdGhldMWRZWsuIAoKVsOhbGFzem9sam9uIMOpcyBpc21lcmtlZGplbiBt
ZWcgYSByw6lzemxldGVra2VsISAKCgpLYXBvbGNzIE3DoXR5w6FzCkh1bmdhcnkgVGVhbSBMZWFk
ZXIgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4
ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
