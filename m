Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A07AFA63BB
	for <lists+kexec@lfdr.de>; Tue,  3 Sep 2019 10:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qWVSwhr2iFldr4kk2rBferz5Ohw6N+dsApvFDtQ9v3k=; b=O9bAB0Z/1TPi6f
	LfwxCrJa6imvYkLA36In00qOaP8FAU/dFzwwyMPDEWUi7ojOtCg+zQ+SSfgnN+hToGB+8r/FJucl2
	hZdn+IPQbFYnTWYOdhP3fEOL5UCZM9FRi0oaNqiPrbpxWz8pF9n4iVUCtjDR0frzGjBoMIUl42FWo
	ER4aniugEPDljAHlnVb7jeM94DrP2Rqdk2lYtZCRfaks9lHZP42uiS/XVZ7q2rc8zCazJ4UghtX6/
	OaaceEj+WndrHnljCv1u+4XTY+2nZ5b2hP8MfpeW6CmomubqP7zDWZlOYxHaEheu5e08nYc/GV9sl
	zONwMRH/eeACnkHscLqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5444-00043v-Q5; Tue, 03 Sep 2019 08:21:24 +0000
Received: from mail.myocards24.eu ([80.211.31.237])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i543y-00043a-Cn
 for kexec@lists.infradead.org; Tue, 03 Sep 2019 08:21:19 +0000
Received: by mail.myocards24.eu (Postfix, from userid 1001)
 id C19E987775; Tue,  3 Sep 2019 10:21:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=myocards24.eu;
 s=mail; t=1567498866;
 bh=xBN5KrwGBIuRv5p99N2Jwj7SQJMv5k+gy8ovi3P478A=;
 h=Date:From:To:Subject:From;
 b=oGUsvcE2IR/vMeTQI7FgIS+V7s0NsUMxdP3P6SJEA2ZOrtgzO18wnducHDSqDQFLf
 4dbH7GpMJTVT50x5eL/ENQ0Y9/DlTVFZBF6Oaa5ZO16xxJRG4s2iRxAsAo8CisiJHl
 Ku/r7KrOeajcUtl44ealWdZD/T4H71itlUVO8F0o=
Received: by mail.myocards24.eu for <kexec@lists.infradead.org>;
 Tue,  3 Sep 2019 08:21:03 GMT
Message-ID: <20190903084500-0.1.7.7re.0.a552341blj@myocards24.eu>
Date: Tue,  3 Sep 2019 08:21:03 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@myocards24.eu>
To: <kexec@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.myocards24.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_012118_635431_D5CD71BD 
X-CRM114-Status: UNSURE (   1.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.5 MIXED_ES               Too many es are not es
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

w5xkdsO2emzDtm0sCgpBIGPDqWfDqXQgYSBrb25rdXJlbmNpw6F0w7NsIG1lZ2vDvGzDtm5iw7Z6
dGV0xZEgb2x5YW4ga8O8bMO2bmxlZ2VzIGVzemvDtnrDtmsga2VyZXPDqXNlIHNvcsOhbiwgYW1l
bHllayBhIG11bmthdsOhbGxhbMOzayDDqXMgYSBtdW5rw6FsdGF0w7Mgc3rDoW3DoXJhIGVneWFy
w6FudCBlbMWRbnnDtnNlaywgw6lyZGVtZXMgbWVnZm9udG9sbmkgYSBqdXR0YXTDoXNrw6ludCBh
ZGhhdMOzIGvDoXJ0ecOhayBhbGthbG1hesOhc8OhdC4KCkEga8OhcnR5w6FuIHN6ZXJlcGzFkSDD
tnNzemVnZXQgYXogw5ZuIGFsa2FsbWF6b3R0YWkgdGV0c3rFkWxlZ2VzIGPDqWxyYSBoYXN6bsOh
bGhhdGrDoWsgZmVsLCDDqXMgw6lydMOpa2VsbmkgZm9nasOhayBtdW5rw6FsdGF0w7NqdWsgZWxr
w7Z0ZWxlemV0dHPDqWfDqXQuIAoKRml6ZXTDqXNlbWVsw6lzIGhlbHlldHQgaXMga2l2w6Fsw7Mg
YWx0ZXJuYXTDrXZhLCBoaXN6ZW4gYWxhY3NvbnlhYmIga8O2bHRzw6lnZWtrZWwgasOhciwgw6lz
IGEgbXVua8OhbHRhdMOzIHN6YWLDoWx5b3poYXRqYSBhIGvDoXJ0ecOhcmEgdMO2bHRlbmTFkSDD
tnNzemVnZXQgcGwuIGEgbXVua2F2w6FsbGFsw7MgZXJlZG3DqW55ZWksIHN6b2xnw6FsYXRpIGlk
ZWplLCByw6lzenbDqXRlbGUgc3RiLiBhbGFwasOhbi4gQSBrw6FydHlhIGLDoXJtaWtvciBsZW1v
bmRoYXTDsy4gCgpNaWtvciBhbGthbG1hcyDDlm5uZWssIGhvZ3kgYmVzesOpbGrDvG5rIGEga8Oh
cnR5w6FrIGFsa2FsbWF6w6FzaSBsZWhldMWRc8OpZ2VpcsWRbCBheiDDlm7DtmsgY8OpZ8OpbsOp
bD8KCgpLYXBvbGNzIE3DoXR5w6FzCkh1bmdhcnkgVGVhbSBMZWFkZXIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhl
Y0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8va2V4ZWMK
