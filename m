Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96C6DF6D9
	for <lists+kexec@lfdr.de>; Mon, 21 Oct 2019 22:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sbrY3MEQa8ZqvmXJd/1hPk7NxHHowqbkLVCcS0/W8kE=; b=H8JEw+vPIWZmUo
	F6tgpFRmdkkpM+EkY/bLy7GrGsXaWTWNOH+CGoriNDYP9YeNZPhjk3HG0bcZgZNrITF+tmde3YTA3
	MBXV8kPpfr6ZVsT56S+XycYOlk+irEzP6bcHr5OKZJEghWGzS/09WfyDxiG8oUST4jIg8mvD9XG6I
	rUySY8+5RjmUMpkNKHooCQgLj8D9uXARntgc8LEGKlgSEtsAMs/3ivwwJ/65KAsABWuMg2/t3sflm
	IeKgpRx1ATWg12/eCcxr5urYhEwPTvYONkEkxtuuAu5RUyydmBti7RQ7rAOcKPiTbPftUlpAYNNhh
	4ltNp6pd2tB6NU12ks7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMeSK-0007hn-82; Mon, 21 Oct 2019 20:39:08 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMeSG-0007h3-Lx
 for kexec@lists.infradead.org; Mon, 21 Oct 2019 20:39:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571690311;
 bh=unC+1ijMGoEqcIPC3fGxRtO5GlwL39BCXuya1+SeGFA=;
 h=X-UI-Sender-Class:Date:From:To:Subject;
 b=CdeNerRlsFgscBoJxqRPI1uQgpKxrdTBi14IlkkBQfL94X3Xy8TbYPZYR5uZnXAQh
 WHHAqwFAcSXDyq7gX5lcrv/2Wj0claOTuWKRMrCiKBuZyRLdRcOsfA8/uzbCzFZQFR
 zn58hff0jagZpN6mc4FzMLaZOzr8gm8B+w/Lu4FM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ls3530.fritz.box ([92.116.162.72]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MYvY8-1iZw7L0OKu-00Uslw; Mon, 21
 Oct 2019 22:38:31 +0200
Date: Mon, 21 Oct 2019 22:38:29 +0200
From: Helge Deller <deller@gmx.de>
To: kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Eric Biederman <ebiederm@xmission.com>
Subject: [PATCH] kexec: Fix pointer-to-int-cast warnings
Message-ID: <20191021203829.GA22375@ls3530.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Provags-ID: V03:K1:/51vtI9nDEGVncHNoLxrPHcmWCXGlNG1rbvuE8WBp5HTJZYXa68
 mmn1PRLBKW6ZGut2L4+jWFbs14ud/hErioFtcYuJvRe4NizzsGM2/TyuGZoO3zeku8TRQnF
 0oGjjJaftgxyU206B5WVXeoD2Mw+pBUVY3qq2lgzw95J0dNfCW+ABGQlFDjluXjeN0+vYGl
 ZBkV8qlfAy7oLj81iuu+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:omr0u6W6YOs=:nEB/oDTRKF1UwYZ2pSbZL3
 hNOwn3ZgNLzQgA2tzAZ5sxrF0f2ew4Rh0TeJdXGUsJ/gBgQGL0/7xmZ6khyBtc6zt011wP2Lt
 Dga1LJQwT0YBCp5uxROBT1/LaL3FuvlEJcfrGkfpKvNSpLG9JeljXSuqL2tQUlvysOkrDvBnb
 6qrAuX/5ewlAmFShpxHSAj6gBuXWhXrJak5E+1Qt5ReVSf1bdCH3fnL1RtJcYeV5XKoQV651k
 aPxMHHEP+85aPmLotMD1etoCK6NOEFAD+nvNWJv2P6tBEcdfSUhl6FwJT5aU5E3ZXegGDR+f6
 MN3tQnOGmKvGGkVbgq3Id+5zQ9qzMJ/WP7f1doIi8zclvgEXZ5tBEm1pZsf7qH2lsdcmUraF5
 UwCkW9YMU9K7AhdXUhvfG4VxVu9CmRLpeNB+1/1nkVKNy7vH7pBTUyhUh+xt6byd1XgcmN57t
 hE033UAQ/LI0dkQeEnI5xt9S5H8J0tcFfL3X8+X3+k+SVLUFH6Fkkj81F+1hS3mHtAAAgbZ31
 LYTDsRn795alyb4QIn6JbdK5kB8phk9oZg4p/W84dYr+ETuvEmlynYVqxyPhIi7rSaofqJHMU
 jM05IFPtKb0S6roOstEJJWecVaWYaOVu3sz/StB4ayMFFzshHqL/EtE2Zjd9J7QOD7Uck8Lrl
 OPoyEtpRGK9z1b5QO1eMZq+jat0DHU/Nx6nxDi2GpIFjXdO7If1bXIIr96f/B8zdorQ+S6evK
 3cIUh3zAVGc8RbTAjmBwmtbUjVvLy1e2JQ65qHiAzKrxrfUgmA8b34mhU5aD6NsWnoBoNGk+p
 GbtIbXuR+zQmaBSaZs1/6dFhdYS7X8FYOFQcBD/o9s0Z9pZrI4Ck5fAS1dGVqpLUmTW/2MR6g
 7VIJGqaTnbZxwZgW/TDtdDn6FUD2n/LPWiJcteqDpyY/P4wsoz5eEMiILiuI1WpgPCX+4E9yi
 kpT7e8GqgEKQkhwYpHtTyvLfSxh1S2/yoXvpXJVyekgieCPrZwB5Y/52yp0G+iUSM+zjR/WCg
 bR6WTFXXBoxBospUfHgyJ4NU2iKQmvhwafIC+isbN+02kMlRdQQQqbYjF5OQX0t8OjV+L+LDi
 rE0ULaT1U3ui8fMlAUD4LmlTdS3pNKXKGNBw6+mJleq/LwjaEiKifKmzB/gtZhyNJTrVeRdsE
 bSp7NJHDq2R5UcbNWrboekW95eUBTcBtBAKz2d3+l8pVP1rSvSJhsixpqdKjJwPsBzk4b+Xs9
 RXQjd0RIcYnlOb+/8EltuhBROKZkJ0juRku/t9g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_133905_053444_15001E68 
X-CRM114-Status: UNSURE (   4.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deller[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Rml4IHR3byBwb2ludGVyLXRvLWludC1jYXN0IHdhcm5pbmdzIHdoZW4gY29tcGlsaW5nIGZvciB0
aGUgMzItYml0IHBhcmlzYwpwbGF0Zm9ybToKCmtlcm5lbC9rZXhlY19maWxlLmM6IEluIGZ1bmN0
aW9uIOKAmGNyYXNoX3ByZXBhcmVfZWxmNjRfaGVhZGVyc+KAmToKa2VybmVsL2tleGVjX2ZpbGUu
YzoxMzA3OjE5OiB3YXJuaW5nOiBjYXN0IGZyb20gcG9pbnRlciB0byBpbnRlZ2VyIG9mIGRpZmZl
cmVudCBzaXplIFstV3BvaW50ZXItdG8taW50LWNhc3RdCiAgcGhkci0+cF92YWRkciA9IChFbGY2
NF9BZGRyKV90ZXh0OwogICAgICAgICAgICAgICAgICBeCmtlcm5lbC9rZXhlY19maWxlLmM6MTMy
NDoxOTogd2FybmluZzogY2FzdCBmcm9tIHBvaW50ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJlbnQg
c2l6ZSBbLVdwb2ludGVyLXRvLWludC1jYXN0XQogIHBoZHItPnBfdmFkZHIgPSAodW5zaWduZWQg
bG9uZyBsb25nKSBfX3ZhKG1zdGFydCk7CiAgICAgICAgICAgICAgICAgIF4KClNpZ25lZC1vZmYt
Ynk6IEhlbGdlIERlbGxlciA8ZGVsbGVyQGdteC5kZT4KCmRpZmYgLS1naXQgYS9rZXJuZWwva2V4
ZWNfZmlsZS5jIGIva2VybmVsL2tleGVjX2ZpbGUuYwppbmRleCA3OWYyNTJhZjdkZWUuLjc0Yjc2
NTJmYzk5MyAxMDA2NDQKLS0tIGEva2VybmVsL2tleGVjX2ZpbGUuYworKysgYi9rZXJuZWwva2V4
ZWNfZmlsZS5jCkBAIC0xMzA0LDcgKzEzMDQsNyBAQCBpbnQgY3Jhc2hfcHJlcGFyZV9lbGY2NF9o
ZWFkZXJzKHN0cnVjdCBjcmFzaF9tZW0gKm1lbSwgaW50IGtlcm5lbF9tYXAsCiAJaWYgKGtlcm5l
bF9tYXApIHsKIAkJcGhkci0+cF90eXBlID0gUFRfTE9BRDsKIAkJcGhkci0+cF9mbGFncyA9IFBG
X1J8UEZfV3xQRl9YOwotCQlwaGRyLT5wX3ZhZGRyID0gKEVsZjY0X0FkZHIpX3RleHQ7CisJCXBo
ZHItPnBfdmFkZHIgPSAodW5zaWduZWQgbG9uZykgX3RleHQ7CiAJCXBoZHItPnBfZmlsZXN6ID0g
cGhkci0+cF9tZW1zeiA9IF9lbmQgLSBfdGV4dDsKIAkJcGhkci0+cF9vZmZzZXQgPSBwaGRyLT5w
X3BhZGRyID0gX19wYV9zeW1ib2woX3RleHQpOwogCQllaGRyLT5lX3BobnVtKys7CkBAIC0xMzIx
LDcgKzEzMjEsNyBAQCBpbnQgY3Jhc2hfcHJlcGFyZV9lbGY2NF9oZWFkZXJzKHN0cnVjdCBjcmFz
aF9tZW0gKm1lbSwgaW50IGtlcm5lbF9tYXAsCiAJCXBoZHItPnBfb2Zmc2V0ICA9IG1zdGFydDsK
CiAJCXBoZHItPnBfcGFkZHIgPSBtc3RhcnQ7Ci0JCXBoZHItPnBfdmFkZHIgPSAodW5zaWduZWQg
bG9uZyBsb25nKSBfX3ZhKG1zdGFydCk7CisJCXBoZHItPnBfdmFkZHIgPSAodW5zaWduZWQgbG9u
ZykgX192YShtc3RhcnQpOwogCQlwaGRyLT5wX2ZpbGVzeiA9IHBoZHItPnBfbWVtc3ogPSBtZW5k
IC0gbXN0YXJ0ICsgMTsKIAkJcGhkci0+cF9hbGlnbiA9IDA7CiAJCWVoZHItPmVfcGhudW0rKzsK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1h
aWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
