Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A871091E67
	for <lists+kexec@lfdr.de>; Mon, 19 Aug 2019 09:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WT3pwkWHd5GauOPN0gYk2UQvRhOLIKxp+KuXjc3uIgc=; b=dhCmBsm42kb/Xe
	hTw7lyQsujVGmo22gnU7BRYhrFdJSUQ4cOvek8KUqlzcL5jl/z0HollHleUviXpC06h7K3IRK2xgC
	qYnRXP6VF/vQ8jplaSpsbTLFHw+8HrUOj/5WPeri5+s+dznx1ENJNu2AK0KHDiNznPbNeBrkGk3SN
	p1SpNHu+gnKi42jb+9K+eULZjoW08aQrImxoUCa64d32dUTHDh3HP9zhglih2+PdMS2I2xiG2baIr
	K09IUeY99Gh63jUr7e+2bPa4RMWPbYteCqik4dmmKvX8pcpRGpteyqBqNnfOiO41y4ZB6Z8VOhJhP
	0y9BhY3sP/cl3WacJqgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcYq-0002wa-0k; Mon, 19 Aug 2019 07:58:40 +0000
Received: from mail.eat4eat.eu ([194.182.86.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcYj-0002wA-9f
 for kexec@lists.infradead.org; Mon, 19 Aug 2019 07:58:34 +0000
Received: by mail.eat4eat.eu (Postfix, from userid 1001)
 id 4777187643; Mon, 19 Aug 2019 09:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=eat4eat.eu; s=mail;
 t=1566201038; bh=I7iO3T5ftjhhUPN8c84DIS0ma2cgKNNkKy8AWheeorA=;
 h=Date:From:To:Subject:From;
 b=hzzd8vjcWf9uKz0fJXENH2BAVfqcAgrx1uJwJJf01a21DwgNCOBbNwrGX8gl4pcC9
 1YILxu3FVy28RrW3kvn65WQaD4iV3Ya/8S/7FVvj0DXuVEPPQtGoM4zBMnfyo41K26
 PAcMr/Ia4n+Dec/dsYEmtluimOB40tY513wiX+OY=
Received: by mail.eat4eat.eu for <kexec@lists.infradead.org>;
 Mon, 19 Aug 2019 07:50:35 GMT
Message-ID: <20190819084500-0.1.1v.3phe.0.md6wx7cgoc@eat4eat.eu>
Date: Mon, 19 Aug 2019 07:50:35 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@eat4eat.eu>
To: <kexec@lists.infradead.org>
Subject: =?UTF-8?Q?Csapat_motiv=C3=A1ci=C3=B3?=
X-Mailer: mail.eat4eat.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_005833_505638_40417399 
X-CRM114-Status: UNSURE (   1.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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

w5xkdsO2emzDtm0hIAoKTXVua8OhbSBzb3LDoW4sIG5hcCBtaW50IG5hcCBvbHlhbiB2w6FsbGFs
a296w6Fzb2trYWwgZG9sZ296b20sIGFtZWx5ZWsgYWJiYW4gYXogaXBhcsOhZ2JhbiB0ZXbDqWtl
bnlrZWRuZWssIGFtZWx5YmVuIGF6IMOWbsOpIGlzLCBlbm5layBtZWdmZWxlbMWRZW4gZm9seWFt
YXRvc2FuIG55b21vbiBrw7Z2ZXRlbSBhIHBpYWNpIGluZm9ybcOhY2nDs2thdC4KCkEgbWVnZmVs
ZWzFkSBtb3RpdsOhY2nDsywgdmFsYW1pbnQgYSBtYXhpbcOhbGlzIGxvamFsaXTDoXMgYSBtdW5r
YXbDoWxsYWzDs2sgZmVsw6kgYXogZWxzxZFkbGVnZXMgZmVsYWRhdGEgYSB2w6FsbGFsa296w6Fz
b2tuYWsuIEdvbmRvbHRhbSDDqXJkZWtlbGhldGksIGhvZ3kgY8OpZ8O8bmsgbWlseWVuIG1lZ29s
ZMOhc29ra2FsIHNlZ8OtdGV0dGUgYXogw5Zuw7Zrw6loZXogaGFzb25sw7MgdsOhbGxhbGtvesOh
c29rYXQsIGd5b3JzYW4gbsO2dmVsdmUgYXpvayBoYXTDqWtvbnlzw6Fnw6F0LCBhIGLDqXJlayBl
bWVsw6lzZSBuw6lsa8O8bCEgCgpTemVydmV6aGV0w7xuayBlZ3kgMTAgcGVyY2VzIHRhbMOhbGtv
esOzdCwgYW1lbHluZWsga2VyZXRlaW4gYmVsw7xsIG1pbmRlbiBpbmZvcm3DoWNpw7N0IG1lZ29z
enRhbsOpayDDlm7DtmtrZWw/CgoKS2Fwb2xjcyBNw6F0ecOhcwpIdW5nYXJ5IFRlYW0gTGVhZGVy
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBt
YWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
